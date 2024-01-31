using BookHotel.Areas.Admin.Services.Interfaces;
using BookHotel.Data;
using BookHotel.Models;
using Microsoft.EntityFrameworkCore;
using System.Web.Mvc;

namespace BookHotel.Areas.Admin.Services.Models
{
    public class CommentService : ICommentService
    {
        ApplicationDbContext db;
        public CommentService(ApplicationDbContext db)
        {
            this.db = db;
        }
        public async Task<bool> AddCommentAsync(Comment comment)
        {
            if (comment != null)
            {
                comment.IsDelete = false;
                comment.IsStatus = false;
                comment.CommentDateTime = DateTime.Now;
                db.Comment.Add(comment);
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<bool> DeleteCommentAsync(int id)
        {
            var comment = db.Comment.FirstOrDefault(x => x.Id == id && x.IsDelete == false);

            if (comment != null)
            {
                comment.IsDelete = true;
                await db.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<Comment>> GetAllCommentAsync()
        {

            var list = await db.Comment.Where(x => x.IsDelete == false && x.IsStatus==true).ToListAsync();
            return list;
        }
        public async Task<List<Comment>> GetAllAdminCommentAsync()
        {

            var list = await db.Comment.Where(x => x.IsDelete == false).ToListAsync();
            return list;
        }

        public async Task<Comment> GetCommentByIdAsync(int id)
        {
            var comment = await db.Comment
                 .Where(x => x.Id == id && !x.IsDelete)
                 .FirstOrDefaultAsync();
            return comment;
        }

        public async Task<bool> UpdateCommentAsync(Comment comment)
        {
            var updateComment = await db.Comment.FirstOrDefaultAsync(x => x.Id == comment.Id && !x.IsDelete);
            if (updateComment != null)
            {
                updateComment.IsStatus = comment.IsStatus;
                db.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
