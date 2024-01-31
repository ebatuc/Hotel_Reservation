using BookHotel.Models;

namespace BookHotel.Areas.Admin.Services.Interfaces
{
    public interface IReservationService
    {
        public Task<List<Reservation>> GetAllReservationAsync();
        public Task<Reservation> GetReservationByIdAsync(int id);
        public Task<bool> DeleteReservationAsync(int id);
    }
}
