using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class UserService : IUserService
    {
        private readonly ApplicationDbContext db;
        public UserService(ApplicationDbContext db)
        {
            this.db = db;
        }
        public Task<bool> AddUserAsync(ApplicationUser user)
        {
            throw new NotImplementedException();
        }

        public Task<bool> DeleteUserAsync(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<List<ApplicationUser>> GetAllUserAsync()
        {

            var users = await db.ApplicationUser.ToListAsync();
            var roles = await db.Roles.ToListAsync();
            var userRole = await db.UserRoles.ToListAsync();

            foreach (var user in users)
            {
                var roleId = userRole.FirstOrDefault(x => x.UserId == user.Id)?.RoleId;
                user.Role = roles.FirstOrDefault(x => x.Id == roleId)?.Name;
            }

            return users;
        }



        public Task<ApplicationUser> GetUserByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> UpdateUserAsync(ApplicationUser user)
        {
            throw new NotImplementedException();
        }
    }
}
