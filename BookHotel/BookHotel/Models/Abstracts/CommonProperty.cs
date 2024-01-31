namespace BookHotel.Models.Abstracts
{
    public abstract class CommonProperty
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public bool IsStatus { get; set; }
        public bool IsDelete { get; set; }
    }
}
