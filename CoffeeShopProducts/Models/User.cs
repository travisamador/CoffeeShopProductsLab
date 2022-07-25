﻿using System;
using System.Collections.Generic;

namespace CoffeeShopProducts.Models
{
    public partial class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string FavDrink { get; set; } = null!;
    }
}
