using Microsoft.AspNetCore.Mvc;

namespace BookHotel.Areas.Guest.Controllers
{
    public class FacilityController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
