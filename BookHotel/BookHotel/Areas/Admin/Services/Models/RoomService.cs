using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class RoomService : IRoomService
    {
        ApplicationDbContext db;
        IHotelService hotelService;
        public RoomService(ApplicationDbContext db, IHotelService hotelService)
        {
            this.db = db;
            this.hotelService = hotelService;
        }

        public async Task<IEnumerable<Hotels>> GetAllHotelsAsync()
        {
            return await hotelService.GetAllHotelAsync();
        }


            public async Task<bool> AddRoomAsync(Rooms room)
        {
            if (room != null)
            {
              
                await db.Rooms.AddAsync(room);
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<bool> DeleteRoomAsync(int id)
        {
            var room = db.Rooms.FirstOrDefault(x => x.Id == id && x.IsDelete == false);

            if (room != null)
            {
                room.IsDelete = true;
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<Rooms>> GetAllRoomAsync()
        {
            var list = await db.Rooms.Where(x => x.IsDelete == false).ToListAsync();
            return list;
        }

        //public async Task<Rooms> GetRoomByIdAsync(int id)
        //{
        //    var room = db.Rooms.FirstOrDefault(x => x.Id == id && x.IsDelete == false);
        //    return room;
        //}
        public async Task<Rooms> GetRoomByIdAsync(int id)
        {
            var room = await db.Rooms
                .Where(x => x.Id == id && !x.IsDelete)
                .FirstOrDefaultAsync();

            return room;
        }

        public async Task<bool> UpdateRoomAsync(Rooms room)
        {
            var updateRoom = await db.Rooms.FirstOrDefaultAsync(x => x.Id == room.Id && !x.IsDelete);
            if (updateRoom != null)
            {
                updateRoom.Name = room.Name;
                updateRoom.Description = room.Description;
                updateRoom.Price = room.Price;
                updateRoom.BedCount = room.BedCount;
                updateRoom.BathCount = room.BathCount;
                updateRoom.Wifi = room.Wifi;
                updateRoom.Smoke = room.Smoke;
                if (!String.IsNullOrEmpty(room.Image))
                {
                    updateRoom.Image = room.Image;
                }
                updateRoom.IsStatus = room.IsStatus;
                updateRoom.IsDelete = room.IsDelete;

                db.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
