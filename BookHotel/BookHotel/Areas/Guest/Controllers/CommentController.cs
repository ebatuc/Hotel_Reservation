using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Security.Claims;

namespace BookHotel.Areas.Guest.Controllers
{
    [Area("Guest")]
    public class CommentController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly ICommentService _commentService;
        //private List<Comment> comments = new List<Comment>();
        public CommentController(ApplicationDbContext db, ICommentService commentService)
        {
            _db = db;
            _commentService = commentService;
        }
        public async Task<IActionResult> Index()
        {

            var comments = await _commentService.GetAllCommentAsync();

            return View(comments);
        }
        public async Task<IActionResult> Comment()
        {
            var comments = await _commentService.GetAllCommentAsync();

            return View(comments);
        }
        public async Task<IActionResult> ShowComment()
        {
            var comments = await _commentService.GetAllCommentAsync();

            return View(comments);

        }

        // POST: Guest/Comment/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Comment comment)
        {
            if (ModelState.IsValid)
            {
                bool success = await _commentService.AddCommentAsync(comment);

                if (success)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError("", "Comment eklenirken bir hata oluştu.");
                }
            }
            return View("Error");
        }

    }
}


