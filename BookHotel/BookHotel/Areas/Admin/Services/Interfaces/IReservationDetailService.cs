using BookHotel.Models;

namespace BookHotel.Areas.Admin.Services.Interfaces
{
    public interface IReservationDetailService
    {
        public Task<List<ReservationDetail>> GetAllReservationDetailAsync();
        public Task<ReservationDetail> GetReservationDetailByIdAsync(int id);
        public Task<bool> DeleteReservationDetailAsync(int id);
    }
}
