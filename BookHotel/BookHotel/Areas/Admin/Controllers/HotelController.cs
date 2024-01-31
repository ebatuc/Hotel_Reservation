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
    public class HotelController : Controller
    {
        private readonly IHotelService hotelService;

        public HotelController(IHotelService hotelService)
        {
            this.hotelService = hotelService;
        }

        // GET: Admin/Hotel
        public async Task<IActionResult> Index()
        {
            var list = await hotelService.GetAllHotelAsync();
            return View(list);
        }

        // GET: Admin/Hotel/Details/
        public async Task<IActionResult> Details(int? id)
        {
            var hotel = await hotelService.GetHotelByIdAsync(id.Value);

            return hotel == null ? NotFound() : View(hotel);
        }

        // GET: Admin/Hotel/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Hotel/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Hotels hotels)
        {
            if (ModelState.IsValid)
            {

                await hotelService.AddHotelAsync(hotels);
                return RedirectToAction("Create");
            }
            return View(hotels);
        }

        // GET: Admin/Hotel/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || !(await hotelService.GetHotelByIdAsync(id.Value) is var hotel) || hotel == null)
            {
                return NotFound();
            }

            return View(hotel);
        }

        // POST: Admin/Hotel/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Hotels hotels)
        {
            if (ModelState.IsValid)
            {
                var result = await hotelService.UpdateHotelAsync(hotels);

                if (result)
                {
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Otel güncellenirken bir hata oluştu.");
                }
            }

            return View(hotels);
        }


        // GET: Admin/Hotel/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || !(await hotelService.GetHotelByIdAsync(id.Value) is var hotel) || hotel == null)
            {
                return NotFound();
            }

            return View(hotel);
        }

        // POST: Admin/Hotel/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            return (await hotelService.DeleteHotelAsync(id)) ? RedirectToAction(nameof(Index)) : View();
        }

        private async Task<bool> HotelExistsAsync(int id)
        {
            var hotel = await hotelService.GetHotelByIdAsync(id);
            return hotel != null;
        }

    }
}
