namespace BookHotel.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Surname { get; set; }
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Message { get; set; }
        public DateTime? CommentDateTime { get; set; }
        public bool IsStatus { get; set; }
        public bool IsDelete { get; set; }
    }
}
