using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiBlazorHybridApp.Models
{
    public class MainResponse
    {
        public loginresponse data { get; set; }
    }
    public class loginresponse
    {
        public int Id { get; set; }
        public string fullName { get; set; }

        public string email { get; set; }

        public string message { get; set; }
        public string jwtToken {  get; set; }
    }
}
