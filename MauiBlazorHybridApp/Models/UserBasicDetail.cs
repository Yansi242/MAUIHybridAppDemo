using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiBlazorHybridApp.Models
{
    public class UserBasicDetail
    {
        public string Name { get; set; }
        public int UserID { get; set; }
        public string jwtToken { get; set; }
        public string RefreshToken { get; set; }
        public string Email { get; set; }
        public string UserAvatar { get; set; }
    }
}
