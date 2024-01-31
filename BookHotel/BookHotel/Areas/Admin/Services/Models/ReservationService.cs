using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class ReservationService : IReservationService
    {
        ApplicationDbContext db;
        IReservationDetailService reservationDetailService;

        public ReservationService(ApplicationDbContext _db, IReservationDetailService _reservationDetailService)
        {
            this.db = _db;
            this.reservationDetailService = _reservationDetailService;
        }

        public async Task<bool> DeleteReservationAsync(int reservationId)
        {
            var reservation = await db.Reservation.Where(x => x.Id == reservationId && x.IsDelete == false).FirstOrDefaultAsync();

            if (reservation != null)
            {
                reservation.IsDelete = true;
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<Reservation>> GetAllReservationAsync()
        {
            var reservationList = await db.Reservation.Where(x => x.IsDelete == false).ToListAsync();
            return reservationList;
        }

        public async Task<Reservation> GetReservationByIdAsync(int id)
        {
            var reservation = await db.Reservation.Where(x => x.Id == id && x.IsDelete == false).FirstOrDefaultAsync();
            return reservation;
        }
    }
}
