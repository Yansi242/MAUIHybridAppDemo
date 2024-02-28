using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MauiBlazorHybridApp.Models;

namespace MauiBlazorHybridApp.Services
{
    public interface IAppService
    {
        Task<bool> RefreshToken();
        Task<MainResponse> AuthenticateUser(LoginModel loginModel);
        Task<RegisterMainResponse> RegisterUser(RegistrationModel registerUser);
        Task<List<StudentModel>> GetAllStudents();
    }
}
