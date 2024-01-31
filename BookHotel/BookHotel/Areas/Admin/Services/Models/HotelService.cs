using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class HotelService : IHotelService
    {
        ApplicationDbContext db;
        public HotelService(ApplicationDbContext db)
        {
            this.db = db;
        }
        public async Task<bool> AddHotelAsync(Hotels hotel)
        {
            if (hotel != null)
            {
                await db.Hotels.AddAsync(hotel);
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<bool> DeleteHotelAsync(int id)
        {
            var hotel = db.Hotels.FirstOrDefault(x => x.Id == id && x.IsDelete == false);

            if (hotel != null)
            {
                hotel.IsDelete = true;
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<Hotels>> GetAllHotelAsync()
        {
            var list = await db.Hotels.Where(x => x.IsDelete == false).ToListAsync();
            return list;
        }

        public async Task<Hotels> GetHotelByIdAsync(int id)
        {
            var hotel = await db.Hotels
                .Where(x => x.Id == id && !x.IsDelete)
                .FirstOrDefaultAsync();

            return hotel;
        }

        public async Task<bool> UpdateHotelAsync(Hotels hotel)
        {
            var updateHotel = await db.Hotels.FirstOrDefaultAsync(x => x.Id == hotel.Id && !x.IsDelete);
            if (updateHotel != null)
            {
                updateHotel.Name = hotel.Name;
                updateHotel.City = hotel.City;
                updateHotel.Country = hotel.Country;
                updateHotel.IsStatus = hotel.IsStatus;
                updateHotel.IsDelete=hotel.IsDelete;

                db.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
