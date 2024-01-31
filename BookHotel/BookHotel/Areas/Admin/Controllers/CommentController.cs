using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Areas.Admin.Services.Models;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BookHotel.Areas.Admin.Controllers
{
    [Authorize(Roles = Other.Role_Admin)]
    [Area("Admin")]
    public class CommentController : Controller
    {
        private readonly ICommentService _commentService;
        public CommentController( ICommentService commentService)
        {
            _commentService = commentService;
        }
        public async Task<IActionResult> Index()
        {
            var comments = await _commentService.GetAllAdminCommentAsync();

            return View(comments);
        }
        // GET: Admin/Hotel/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || !(await _commentService.GetCommentByIdAsync(id.Value) is var comment) || comment == null)
            {
                return NotFound();
            }

            return View(comment);
        }

        // POST: Admin/Comment/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            return (await _commentService.DeleteCommentAsync(id)) ? RedirectToAction(nameof(Index)) : View();
        }

        private async Task<bool> CommentExistsAsync(int id)
        {
            var comment = await _commentService.GetCommentByIdAsync(id);
            return comment != null;
        }
        // GET: Admin/Comment/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || !(await _commentService.GetCommentByIdAsync(id.Value) is var comment) || comment == null)
            {
                return NotFound();
            }

            return View(comment);
        }

        // POST: Admin/Comment/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Comment comments)
        {
            if (ModelState.IsValid)
            {
                var result = await _commentService.UpdateCommentAsync(comments);

                if (result)
                {
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Yorum güncellenirken bir hata oluştu.");
                }
            }

            return View(comments);
        }
    }
}
