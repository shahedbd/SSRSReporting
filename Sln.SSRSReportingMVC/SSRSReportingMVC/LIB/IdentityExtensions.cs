using Microsoft.AspNet.Identity;
using SSRSReportingMVC.Models;
using System.Linq;
using System.Security.Principal;

namespace SSRSReportingMVC.LIB
{
    public static class IdentityExtensions
    {
        public static string GetEmailAdress(this IIdentity identity)
        {
            var userId = identity.GetUserId();
            using (var context = new ApplicationDbContext())
            {
                var user = context.Users.FirstOrDefault(u => u.Id == userId);
                return user.Email;
            }
        }
    }
}