using Iyzipay.Model.V2.Subscription;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookHotel.Models
{
    public class ReservationDetail
    {
        public int Id { get; set; }
        public string? ApplicationUserId { get; set; }
        [ForeignKey(nameof(ApplicationUserId))]
        public ApplicationUser? ApplicationUser { get; set; }
        public string? Name { get; set; }
        public string? Surname { get; set; }
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public DateTime? CheckIn { get; set; }
        public DateTime? CheckOut { get; set; }
        public int? AdultCount { get; set; }
        public int? ChildCount { get; set; }
        public int RoomId { get; set; }
        [ForeignKey("RoomId")]
        public Rooms? Rooms { get; set; }
        public int? RoomQuantity { get; set; }
        public string? SpecialRequest { get; set; }
        public bool? IsDelete { get; set; }

    }
}
