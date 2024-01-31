using BookHotel.Models.Abstracts;

namespace BookHotel.Models
{
    public class Rooms : CommonProperty
    {
        public string Description { get; set; }
        public int Price { get; set; }
        public int BedCount { get; set; }
        public int BathCount { get; set; }
        public bool Wifi { get; set; }
        public bool Smoke { get; set; }
        public string? Image { get; set; }
        public int HotelId { get; set; }
        public Hotels? Hotel { get; set; }
    }
}
