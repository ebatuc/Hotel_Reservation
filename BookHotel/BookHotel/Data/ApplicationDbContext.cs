using BookHotel.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Rooms> Rooms { get; set; }
        public DbSet<Hotels> Hotels { get; set; }
        public DbSet<ApplicationUser> ApplicationUser { get; set; }
        public DbSet<Reservation> Reservation { get; set; }
        public DbSet<ReservationDetail> ReservationDetail { get; set; }
        public DbSet<Comment> Comment { get; set; }


    }
}