﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EntrantsWeb.Models
{
    public class PagingInfo
    {
        public int TotalItems { get; set; }
        public int CurrentPage { get; set; }
        public int PageSize { get; set;}

        public int TotalPages => (int)Math.Ceiling((decimal)TotalItems / PageSize);
    }
}