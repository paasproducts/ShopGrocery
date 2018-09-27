﻿using Microsoft.AspNetCore.Mvc;
using SimplCommerce.Module.Core.Extensions;
using SimplCommerce.Module.ShoppingCart.Services;
using System.Threading.Tasks;
using static SimplCommerce.Infrastructure.Web.ViewComponentExtensions;

namespace SimplCommerce.Module.ShoppingCart.Components
{
    public class CartBadgeViewComponent : ViewComponent
    {
        private ICartService _cartService;
        private IWorkContext _workContext;

        public CartBadgeViewComponent(ICartService cartService, IWorkContext workContext)
        {
            _cartService = cartService;
            _workContext = workContext;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var currentUser = await _workContext.GetCurrentUser();
            var cart = await _cartService.GetCart(currentUser.Id);
            
            return View(this.GetViewPath(), cart.Items.Count);
        }
    }
}
