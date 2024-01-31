using BookHotel.Models.Abstracts;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookHotel.Models
{
    public class Hotels:CommonProperty
    {
        public string City { get; set; }
        public string Country { get; set; }
        public List<Rooms>? Rooms { get; set; }
    }
}
