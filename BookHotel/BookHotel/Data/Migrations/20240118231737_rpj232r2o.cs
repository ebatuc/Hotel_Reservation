using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BookHotel.Data.Migrations
{
    public partial class rpj232r2o : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Rooms_Hotels_HotelsId",
                table: "Rooms");

            migrationBuilder.AlterColumn<int>(
                name: "HotelsId",
                table: "Rooms",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "HotelId",
                table: "Rooms",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_Rooms_Hotels_HotelsId",
                table: "Rooms",
                column: "HotelsId",
                principalTable: "Hotels",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Rooms_Hotels_HotelsId",
                table: "Rooms");

            migrationBuilder.AlterColumn<int>(
                name: "HotelsId",
                table: "Rooms",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "HotelId",
                table: "Rooms",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Rooms_Hotels_HotelsId",
                table: "Rooms",
                column: "HotelsId",
                principalTable: "Hotels",
                principalColumn: "Id");
        }
    }
}
