using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BookHotel.Areas.Guest.Controllers
{
    [Area("Guest")]
    public class AboutController : Controller
    {
        private readonly ICommentService _commentService;
        private readonly ApplicationDbContext _context;

        public AboutController(ApplicationDbContext dbContext, ICommentService commentService)
        {
            _context = dbContext;
            _commentService = commentService;
        }


        public async Task<IActionResult> Index()
        {
            var comments = await _commentService.GetAllCommentAsync();

            return View(comments);
        }
    }
}
