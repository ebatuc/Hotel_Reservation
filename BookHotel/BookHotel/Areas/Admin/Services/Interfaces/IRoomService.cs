using BookHotel.Models;

namespace BookHotel.Areas.Admin.Services.Interfaces
{
    public interface IRoomService
    {
        public Task<bool> AddRoomAsync(Rooms room);
        public Task<bool> UpdateRoomAsync(Rooms room);
        public Task<bool> DeleteRoomAsync(int id);
        public Task<List<Rooms>> GetAllRoomAsync();
        public Task<Rooms> GetRoomByIdAsync(int id);
        Task<IEnumerable<Hotels>> GetAllHotelsAsync();
    }
}
