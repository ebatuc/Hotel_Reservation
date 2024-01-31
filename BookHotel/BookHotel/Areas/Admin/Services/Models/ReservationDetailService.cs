using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class ReservationDetailService : IReservationDetailService
    {
        private readonly ApplicationDbContext db;

        public ReservationDetailService(ApplicationDbContext _db)
        {
            this.db = _db;
        }
        public async Task<bool> DeleteReservationDetailAsync(int reservationDetailId)
        {
            var reservationDetail = await db.ReservationDetail.Where(x => x.Id == reservationDetailId && x.IsDelete == false).FirstOrDefaultAsync();

            if (reservationDetail != null)
            {
                reservationDetail.IsDelete = true;
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<ReservationDetail>> GetAllReservationDetailAsync()
        {
            var reservationDetailList = await db.ReservationDetail.Where(x => x.IsDelete == false).ToListAsync();
            return reservationDetailList;
        }

        public async Task<ReservationDetail> GetReservationDetailByIdAsync(int id)
        {
            var reservaitonDetail = await db.ReservationDetail.Where(x => x.Id == id && x.IsDelete == false).FirstOrDefaultAsync();
            return reservaitonDetail;
        }
    }
}
