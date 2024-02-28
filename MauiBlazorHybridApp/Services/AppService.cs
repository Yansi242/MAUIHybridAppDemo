using MauiBlazorHybridApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Net.Http.Json;

namespace MauiBlazorHybridApp.Services
{
    public class AppService : IAppService
    {
        public async Task<MainResponse> AuthenticateUser(LoginModel loginModel)
        {
            var returnResponse = new MainResponse();
            using (var client = new HttpClient())
            {
                //var url = $"{Setting.BaseUrl}{APIs.AuthenticateUser}";

                //var serializedStr = JsonConvert.SerializeObject(loginModel);

                //var response = await client.PostAsync(url, new StringContent(serializedStr, Encoding.UTF8, "application/json"));

                client.BaseAddress = new Uri("https://localhost:44378/");
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
                var responseMessage = await client.PostAsJsonAsync("api/Account/UserLogin", loginModel);


                if (responseMessage.IsSuccessStatusCode)
                {
                    string contentStr = await responseMessage.Content.ReadAsStringAsync();
                    returnResponse = JsonConvert.DeserializeObject<MainResponse>(contentStr);
                }
            }
            return returnResponse;

        }

		public async Task<List<StudentModel>> GetAllStudents()
		{
			var returnResponse = new List<StudentModel>();
			using (var client = new HttpClient())
			{
				var url = $"{Setting.BaseUrl}{APIs.GetAllStudents}";

				client.DefaultRequestHeaders.Add("Authorization", $"Bearer {Setting.UserBasicDetail?.jwtToken}");
				var response = await client.GetAsync(url);

				if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
				{
					bool isTokenRefreshed = await RefreshToken();
					if (isTokenRefreshed) return await GetAllStudents();
				}
				else
				{
					if (response.IsSuccessStatusCode)
					{
						string contentStr = await response.Content.ReadAsStringAsync();
                        var mainResponse = JsonConvert.DeserializeObject<MainResponseStudent>(contentStr);
                        var data123 = mainResponse;
						if (mainResponse.data != null)
						{
							returnResponse = JsonConvert.DeserializeObject<List<StudentModel>>(mainResponse.data.ToString());
						}
					}
				}

			}
			return returnResponse;
		}

		public Task<bool> RefreshToken()
        {
            throw new NotImplementedException();
        }

        public async Task<RegisterMainResponse> RegisterUser(RegistrationModel registerUser)
        {
            var returnResponse = new RegisterMainResponse();
            using (var client = new HttpClient())
            {
                //var url = $"{Setting.BaseUrl}{APIs.AuthenticateUser}";

                //var serializedStr = JsonConvert.SerializeObject(loginModel);

                //var response = await client.PostAsync(url, new StringContent(serializedStr, Encoding.UTF8, "application/json"));

                client.BaseAddress = new Uri("https://localhost:44378/");
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
                var responseMessage = await client.PostAsJsonAsync("api/Account/RegisterUser", registerUser);

           
                if (responseMessage.IsSuccessStatusCode)
                {
                    string contentStr = await responseMessage.Content.ReadAsStringAsync();
                    returnResponse = JsonConvert.DeserializeObject<RegisterMainResponse>(contentStr);
                }
            }
            return returnResponse;
        }
    }
}
