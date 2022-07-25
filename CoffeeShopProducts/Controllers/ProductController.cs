using CoffeeShopProducts.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CoffeeShopProducts.Controllers
{
    public class ProductController : Controller
    {
        private readonly ILogger<ProductController> _logger;
        private CoffeeShopDBContext context = new CoffeeShopDBContext();
        public ProductController(ILogger<ProductController> logger)
        {
            _logger = logger;
        }
        public IActionResult ProductIndex()
        {
            List<Product> result = context.Products.ToList();
            return View(result);
        }

        public IActionResult ProductDetail(int productId)
        {
            Product p = context.Products.FirstOrDefault(p => p.Id == productId);
            return View(p);
        }

        public IActionResult Drinks()
        {
            List<Product> result = context.Products.ToList();
            return View(result);
        }

        public IActionResult Pastries()
        {
            List<Product> result = context.Products.ToList();
            return View(result);
        }

        public IActionResult Sandwiches()
        {
            List<Product> result = context.Products.ToList();
            return View(result);
        }

    }
}
