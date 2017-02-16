﻿using SimplCommerce.Infrastructure.Models;

namespace SimplCommerce.Module.Core.Models
{
    public class Vendor : EntityBase
    {
        public string Name { get; set; }

        public string SeoTitle { get; set; }

        public bool IsActive { get; set; }

        public bool IsDeleted { get; set; }
    }
}
