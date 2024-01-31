using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.Data;
using Microsoft.AspNetCore.Mvc;

namespace BookHotel.Areas.Guest.Controllers
{
    [Area("Guest")]
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly IRoomService _roomService;


        public HomeController(ApplicationDbContext db, IRoomService roomService)
        {
            this._db = db;
            this._roomService = roomService;
        }
        public async Task<IActionResult> Index()
        {
            var roomList = await _roomService.GetAllRoomAsync();
            return View(roomList);
        }
        public async Task<IActionResult> Room()
        {
            var roomList = await _roomService.GetAllRoomAsync();
            return View(roomList);
        }
    }
}
