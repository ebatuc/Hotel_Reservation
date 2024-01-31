using BookHotel.Models;

namespace BookHotel.Areas.Admin.Services.Interfaces
{
    public interface IHotelService
    {
        public Task<bool> AddHotelAsync(Hotels hotel);
        public Task<bool> UpdateHotelAsync(Hotels hotel);
        public Task<bool> DeleteHotelAsync(int id);
        public Task<List<Hotels>> GetAllHotelAsync();
        public Task<Hotels> GetHotelByIdAsync(int id);
    }
}
