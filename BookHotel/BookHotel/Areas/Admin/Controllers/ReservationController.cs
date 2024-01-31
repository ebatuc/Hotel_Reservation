using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BookHotel.Areas.Admin.Controllers
{
    [Authorize(Roles = Other.Role_Admin)]
    [Area("Admin")]
    public class ReservationController : Controller
    {
        private readonly IReservationService reservationService;
        private readonly IReservationDetailService reservationDetailService;
        private readonly IRoomService roomService;

        public ReservationController(IReservationService reservationService, IReservationDetailService reservationDetailService, IRoomService roomService)
        {
            this.reservationService = reservationService;
            this.reservationDetailService = reservationDetailService;
            this.roomService = roomService;
        }

        // GET: Admin/Reservation
        public async Task<IActionResult> Index()
        {
            var list = await reservationService.GetAllReservationAsync();
            return View(list);
        }


        // GET: Admin/Reservation/Delete/5
        public async Task<IActionResult> Delete(int? reservationDetailId, int? reservationId)
        {
            if (reservationDetailId == null || reservationId == null)
            {
                return NotFound();
            }

            var reservation = await reservationDetailService.GetReservationDetailByIdAsync(reservationDetailId.Value);

            if (reservation == null)
            {
                return NotFound();
            }

            // reservationId ve reservationDetailId View'e gönderiliyor
            ViewData["ReservationId"] = reservationId;
            ViewData["ReservationDetailId"] = reservationDetailId;

            return View(reservation);
        }



        // POST: Admin/Reservation/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int reservationId, int reservationDetailId)
        {
            var reservationDeleteResult = await reservationService.DeleteReservationAsync(reservationId);

            var reservationDetailDeleteResult = await reservationDetailService.DeleteReservationDetailAsync(reservationDetailId);

            if (reservationDeleteResult && reservationDetailDeleteResult)
            {
                return RedirectToAction(nameof(Index));
            }

            return View();
        }


        private async Task<bool> ReservationExistsAsync(int id)
        {
            var reservation = await reservationService.GetReservationByIdAsync(id);
            return reservation != null;
        }

        // GET: Admin/Reservation/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            var reservationDetail = await reservationDetailService.GetReservationDetailByIdAsync(id.Value);

            return reservationDetail == null ? NotFound() : View(reservationDetail);
        }
    }
}
