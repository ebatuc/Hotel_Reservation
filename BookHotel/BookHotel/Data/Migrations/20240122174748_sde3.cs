using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BookHotel.Data.Migrations
{
    public partial class sde3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsDelete",
                table: "ReservationDetail",
                type: "bit",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDelete",
                table: "Reservation",
                type: "bit",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsDelete",
                table: "ReservationDetail");

            migrationBuilder.DropColumn(
                name: "IsDelete",
                table: "Reservation");
        }
    }
}
