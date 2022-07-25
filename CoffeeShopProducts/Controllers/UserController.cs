using CoffeeShopProducts.Models;
using Microsoft.AspNetCore.Mvc;

namespace CoffeeShopProducts.Controllers
{
    public class UserController : Controller
    {
        private CoffeeShopDBContext context = new CoffeeShopDBContext();
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult UserForm()
        {
            List<Product> result = context.Products.ToList();
            return View(result);
        }

        public IActionResult UserResult(User u)
        {
            return View(u);
        }

        public IActionResult AddUser(User newUser)
        {
            context.Users.Add(newUser);
            context.SaveChanges();
            return RedirectToAction("UserResult");
        }
    }
}
