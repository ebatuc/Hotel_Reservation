using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BookHotel.Data.Migrations
{
    public partial class sfaer : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "HotelId",
                table: "Rooms",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "HotelId",
                table: "Rooms");
        }
    }
}
