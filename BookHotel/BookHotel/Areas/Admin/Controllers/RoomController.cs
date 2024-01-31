using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BookHotel.Data;
using BookHotel.Models;
using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.GenericModels;
using Microsoft.AspNetCore.Authorization;

namespace BookHotel.Areas.Admin.Controllers
{
    [Authorize(Roles = Other.Role_Admin)]
    [Area("Admin")]
    public class RoomController : Controller
    {
        private readonly IRoomService roomService;
        private readonly UploadImage uploadImage;
        private readonly IHotelService hotelService;

        public RoomController(IRoomService roomService, UploadImage uploadImage, IHotelService hotelService)
        {
            this.roomService = roomService;
            this.uploadImage = uploadImage;
            this.hotelService = hotelService;
        }

        // GET: Admin/Room
        public async Task<IActionResult> Index()
        {
            var list = await roomService.GetAllRoomAsync();
            return View(list);
        }

        // GET: Admin/Room/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            var room = await roomService.GetRoomByIdAsync(id.Value);

            return room == null ? NotFound() : View(room);
        }

        // GET: Admin/Room/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Room/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Rooms rooms)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                string image = uploadImage.Image(files, "rooms");
                rooms.Image = image == null ? "empty.jpg" : image;

                await roomService.AddRoomAsync(rooms);
                return RedirectToAction("Create");
            }
            return View();
        }

        // GET: Admin/Room/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || !(await roomService.GetRoomByIdAsync(id.Value) is var room) || room == null)
            {
                return NotFound();
            }

            return View(room);
        }

        // POST: Admin/Room/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Rooms rooms)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                string image = uploadImage.Image(files, "rooms");
                if (image != null)
                {
                    rooms.Image = image;
                }

                var result = await roomService.UpdateRoomAsync(rooms);

                if (result)
                {
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Oda güncellenirken bir hata oluştu.");
                }
            }
            return View();

        }

        // GET: Admin/Room/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {

            if (id == null || !(await roomService.GetRoomByIdAsync(id.Value) is var room) || room == null)
            {
                return NotFound();
            }

            return View(room);
        }

        // POST: Admin/Room/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            return (await roomService.DeleteRoomAsync(id)) ? RedirectToAction(nameof(Index)) : View();
        }

        private async Task<bool> RoomExistsAsync(int id)
        {
            var room = await roomService.GetRoomByIdAsync(id);
            return room != null;
        }

    }
}
