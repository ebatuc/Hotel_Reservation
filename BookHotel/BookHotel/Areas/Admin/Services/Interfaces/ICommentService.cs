using BookHotel.Models;

namespace BookHotel.Areas.Admin.Services.Interfaces
{
    public interface ICommentService
    {
        public Task<bool> AddCommentAsync(Comment comment);
        public Task<bool> UpdateCommentAsync(Comment comment);
        public Task<bool> DeleteCommentAsync(int id);
        public Task<List<Comment>> GetAllCommentAsync();
        public Task<List<Comment>> GetAllAdminCommentAsync();
        public Task<Comment> GetCommentByIdAsync(int id);
    }
}
