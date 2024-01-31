using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.Data;
using BookHotel.GenericModels;
using BookHotel.Models;
using Iyzipay;
using Iyzipay.Model;
using Iyzipay.Request;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Security.Claims;

namespace BookHotel.Areas.Guest.Controllers
{
    [Area("Guest")]
    public class ReservationController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly IRoomService _roomService;

        public ReservationController(ApplicationDbContext db, IRoomService roomService)
        {
            _db = db;
            _roomService = roomService;
        }


        public IActionResult Index()
        {
            return View();
        }

        // GET: Admin/Room/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Guest/Reservation/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(ReservationDetail reservationDetail)
        {
            if (ModelState.IsValid)
            {

                if (User.Identity.IsAuthenticated)
                {
                    string currentUserId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
                    reservationDetail.ApplicationUserId = currentUserId;
                }
                reservationDetail.IsDelete = false;
                _db.ReservationDetail.Add(reservationDetail);
                await _db.SaveChangesAsync();

                //Temp
                TempData["TempReservationDetail"] = JsonConvert.SerializeObject(reservationDetail);


                Rooms room = await _roomService.GetRoomByIdAsync(reservationDetail.RoomId);
                double roomPrice = room?.Price ?? 0;

                Reservation reservation = new Reservation
                {
                    ReservationDetail = reservationDetail,
                    ReservationDate = DateTime.Now,
                    IsDelete= false,
                    TotalPrice = reservationDetail.AdultCount * reservationDetail.RoomQuantity * roomPrice * (reservationDetail.CheckOut - reservationDetail.CheckIn)?.TotalDays,
                };

                _db.Reservation.Add(reservation);
                await _db.SaveChangesAsync();

                //temp
                TempData["TempReservation"] = JsonConvert.SerializeObject(reservation);

                //temp
                return RedirectToAction("Payment", new { TempReservationDetail = TempData["TempReservationDetail"], TempReservation = TempData["TempReservation"] });
            }
            return View();
        }



        public IActionResult Payment(string TempReservationDetail, string TempReservation)
        {
            string tempReservationDetailString = TempData["TempReservationDetail"]?.ToString();
            string tempReservationString = TempData["TempReservation"]?.ToString();
            if (string.IsNullOrEmpty(tempReservationDetailString) || string.IsNullOrEmpty(tempReservationString))
            {
                return RedirectToAction("Error"); // Hata sayfasına yönlendirme yapabilirsiniz
            }
            ReservationDetail tempReservationDetail = JsonConvert.DeserializeObject<ReservationDetail>(tempReservationDetailString);
            Reservation tempReservation = JsonConvert.DeserializeObject<Reservation>(tempReservationString);
            ViewBag.TotalPrice = tempReservation.TotalPrice;
            var totalPrice = tempReservation.TotalPrice;

            Options options = new Options();
            options.ApiKey = "sandbox-afgtMnpVhKnAZBpsUuGHz979QDX68UKX";
            options.SecretKey = "sandbox-hE1VEhp5vxZXvScvmDpaGv4flYD4SMD4";
            options.BaseUrl = "Https://sandbox-api.iyzipay.com";

            CreateCheckoutFormInitializeRequest request = new CreateCheckoutFormInitializeRequest();
            request.Locale = Locale.TR.ToString();
            request.ConversationId = "123456789";
            request.Price = totalPrice.ToString();
            request.PaidPrice = totalPrice.ToString();
            request.Currency = Currency.TRY.ToString();
            request.BasketId = "B67832";
            request.PaymentGroup = PaymentGroup.PRODUCT.ToString();
            request.CallbackUrl = "https://localhost:7298/Guest/Reservation/Success";


            Buyer buyer = new Buyer();
            buyer.Id = "asdadsada";
            buyer.Name = "Batuhan";
            buyer.Surname = "Çelik";
            buyer.GsmNumber = "+905554443322";
            buyer.Email = "email@email.com";
            buyer.IdentityNumber = "74300864791";
            buyer.LastLoginDate = "2015-10-05 12:43:35";
            buyer.RegistrationDate = "2000-12-12 12:00:00";
            buyer.RegistrationAddress = "Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1";
            buyer.Ip = "85.34.78.112";
            buyer.City = "Istanbul";
            buyer.Country = "Turkey";
            buyer.ZipCode = "34732";
            request.Buyer = buyer;

            Address shippingAddress = new Address();
            shippingAddress.ContactName = "Batuhan Çelik";
            shippingAddress.City = "Istanbul";
            shippingAddress.Country = "Turkey";
            shippingAddress.Description = "kadıköy";
            shippingAddress.ZipCode = "34742";
            request.ShippingAddress = shippingAddress;

            Address billingAddress = new Address();
            billingAddress.ContactName = "Batuhan Çelik";
            billingAddress.City = "Istanbul";
            billingAddress.Country = "Turkey";
            billingAddress.Description = "kadıköy";
            billingAddress.ZipCode = "34742";
            request.BillingAddress = billingAddress;

            List<BasketItem> basketItems = new List<BasketItem>();
            BasketItem basketProduct;
            basketProduct = new BasketItem();
            basketProduct.Id = "1";
            basketProduct.Name = "Asus Bilgisayar";
            basketProduct.Category1 = "Bilgisayar";
            basketProduct.Category2 = "";
            basketProduct.ItemType = BasketItemType.PHYSICAL.ToString();

            double price = ViewBag.TotalPrice;
            double endPrice = ViewBag.TotalPrice;
            basketProduct.Price = endPrice.ToString().Replace(",", "");
            basketItems.Add(basketProduct);

            request.BasketItems = basketItems;

            CheckoutFormInitialize checkoutFormInitialize = CheckoutFormInitialize.Create(request, options);
            ViewBag.pay = checkoutFormInitialize.CheckoutFormContent;


            return View();
        }

        public IActionResult Success()
        {

            return View();
        }

    }

}

