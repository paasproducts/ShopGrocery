﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Net.Http.Headers;
using Newtonsoft.Json;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Cms.ViewModels;
using SimplCommerce.Module.Core.Models;
using SimplCommerce.Module.Core.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace SimplCommerce.Module.Cms.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/spacebar-widgets")]
    public class SpaceBarWidgetApiContorller : Controller
    {
        private readonly IRepository<WidgetInstance> _widgetInstanceRepository;
        private readonly IRepository<Widget> _widgetRespository;
        private readonly IMediaService _mediaService;

        public SpaceBarWidgetApiContorller(IRepository<WidgetInstance> widgetInstanceRepository, IRepository<Widget> widgetRepository, IMediaService mediaService)
        {
            _widgetInstanceRepository = widgetInstanceRepository;
            _widgetRespository = widgetRepository;
            _mediaService = mediaService;
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var widgetInstance = _widgetInstanceRepository.Query().FirstOrDefault(x => x.Id == id);
            var model = new SpaceBarWidgetForm
            {
                Id = widgetInstance.Id,
                Name = widgetInstance.Name,
                WidgetZoneId = widgetInstance.WidgetZoneId,
                PublishStart = widgetInstance.PublishStart,
                PublishEnd = widgetInstance.PublishEnd,
                DisplayOrder = widgetInstance.DisplayOrder,
                Items = JsonConvert.DeserializeObject<IList<SpaceBarWidgetSetting>>(widgetInstance.Data)
            };
            foreach (var item in model.Items)
            {
                item.ImageUrl = _mediaService.GetMediaUrl(item.Image);
            }
            return Json(model);
        }

        [HttpPost]
        public async Task<IActionResult> Post(IFormCollection formCollection)
        {
            var model = ToSpaceBarWidgetFormModel(formCollection);
            if (ModelState.IsValid)
            {
                foreach (var item in model.Items)
                {
                    item.Image = await SaveFile(item.UploadImage);
                }

                var widgetInstance = new WidgetInstance
                {
                    Name = model.Name,
                    WidgetId = 5,
                    WidgetZoneId = model.WidgetZoneId,
                    PublishStart = model.PublishStart,
                    PublishEnd = model.PublishEnd,
                    DisplayOrder = model.DisplayOrder,
                    Data = JsonConvert.SerializeObject(model.Items)
                };
                _widgetInstanceRepository.Add(widgetInstance);
                _widgetInstanceRepository.SaveChanges();
                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(long id, IFormCollection formCollection)
        {
            var model = ToSpaceBarWidgetFormModel(formCollection);

            foreach (var item in model.Items)
            {
                if (item.UploadImage != null)
                {
                    if (!string.IsNullOrWhiteSpace(item.Image))
                    {
                        await _mediaService.DeleteMediaAsync(item.Image);
                    }
                    item.Image = await SaveFile(item.UploadImage);
                }
            }
            if (ModelState.IsValid)
            {
                var widgetInstance = _widgetInstanceRepository.Query().FirstOrDefault(x => x.Id == id);
                widgetInstance.Name = model.Name;
                widgetInstance.PublishStart = model.PublishStart;
                widgetInstance.PublishEnd = model.PublishEnd;
                widgetInstance.WidgetZoneId = model.WidgetZoneId;
                widgetInstance.DisplayOrder = model.DisplayOrder;
                widgetInstance.Data = JsonConvert.SerializeObject(model.Items);
                _widgetInstanceRepository.SaveChanges();
                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }
        private SpaceBarWidgetForm ToSpaceBarWidgetFormModel(IFormCollection formCollection)
        {
            DateTimeOffset publishStart;
            DateTimeOffset publishEnd;
            var model = new SpaceBarWidgetForm();
            model.Name = formCollection["name"];
            model.WidgetZoneId = int.Parse(formCollection["widgetZoneId"]);
            model.DisplayOrder = int.Parse(formCollection["displayOrder"]);
            if (DateTimeOffset.TryParse(formCollection["publishStart"], out publishStart))
            {
                model.PublishStart = publishStart;
            }
            if (DateTimeOffset.TryParse(formCollection["publishEnd"], out publishEnd))
            {
                model.PublishEnd = publishEnd;
            }
            int numberOfItems = int.Parse(formCollection["numberOfItems"]);
            for (var i = 0; i < numberOfItems; i++)
            {
                var item = new SpaceBarWidgetSetting();
                item.Title = formCollection[$"items[{i}][title]"];
                item.Description = formCollection[$"items[{i}][description]"];
                item.IconHtml = formCollection[$"items[{i}][iconHtml]"];
                item.Image = formCollection[$"items[{i}][image]"];
                item.UploadImage = formCollection.Files[$"items[{i}][uploadImage]"];
                model.Items.Add(item);
            }
            return model;
        }
        private async Task<string> SaveFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Value.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            await _mediaService.SaveMediaAsync(file.OpenReadStream(), fileName, file.ContentType);
            return fileName;
        }
    }
}
