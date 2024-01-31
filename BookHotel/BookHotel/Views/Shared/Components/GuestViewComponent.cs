using Microsoft.AspNetCore.Mvc;
using BookHotel.Models;

namespace BookHotel.Views.Shared.Components
{
    public class GuestViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke(string controllerName, string viewName, List<BookHotel.Models.Rooms> model, BookHotel.Models.Comment commentModel, List<BookHotel.Models.Comment> showCommentModel)
        {
            if (model == null)
            {
                model = new List<BookHotel.Models.Rooms>();
            }

            if (commentModel == null)
            {
                commentModel = new BookHotel.Models.Comment();
            }
            if (showCommentModel == null)
            {
                showCommentModel = new List<BookHotel.Models.Comment>();
            }

            var viewModel = new 
            {
                Rooms = model,
                CommentModel = commentModel,
                Comments = showCommentModel
            };
            ViewBag.ViewModel = viewModel;

            string viewPath = $"/Areas/Guest/Views/{controllerName}/{viewName}.cshtml";
            return View(viewPath);
        }
    }
}
