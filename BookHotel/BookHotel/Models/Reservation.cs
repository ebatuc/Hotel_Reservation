using Iyzipay.Model.V2.Subscription;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookHotel.Models
{
    public class Reservation
    {
        public int Id { get; set; }
        public int ReservationId { get; set; }
        [ForeignKey("ReservationId")]
        public ReservationDetail? ReservationDetail { get; set; }
        public DateTime ReservationDate { get; set; }
        public double? TotalPrice { get; set; }
        public bool? IsDelete { get; set; }
    }
}
