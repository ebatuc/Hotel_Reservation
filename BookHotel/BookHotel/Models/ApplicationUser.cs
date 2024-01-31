using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookHotel.Models
{
    public class ApplicationUser:IdentityUser
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string? Image { get; set; }
        public int Age { get; set; }
        [NotMapped]
        public string Role { get; set; }
    }
}
