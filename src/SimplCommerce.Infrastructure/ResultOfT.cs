﻿using System.Collections.Generic;

namespace SimplCommerce.Infrastructure
{
    public class Result<TValue> : Result
    {
        public readonly bool Succeeded;
        public readonly object Data;
        public readonly IEnumerable<char> ErrorMessage;

        public TValue Value { get; set; }

        protected internal Result(TValue value, bool success, string error) 
            : base(success, error)
        {
            Value = value;
        }
    }
}
