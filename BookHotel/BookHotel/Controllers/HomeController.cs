using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SQLitePCL;
using System.Diagnostics;

namespace BookHotel.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;
        private readonly IRoomService _roomService;
        public HomeController(ILogger<HomeController> logger,ApplicationDbContext dbContext, IRoomService roomService)
        {
            _context = dbContext;
            _logger = logger;
            _roomService = roomService;
        }

        public async Task<IActionResult> Index()
        {

            var roomList = await _roomService.GetAllRoomAsync();
            return View(roomList);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}