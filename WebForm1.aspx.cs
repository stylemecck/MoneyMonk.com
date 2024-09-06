using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.UI;
using Newtonsoft.Json;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static readonly HttpClient httpClient = new HttpClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnConvert_Click(object sender, EventArgs e)
        {
            double amount;
            if (double.TryParse(txtAmount.Text, out amount))
            {
                string fromCurrency = ddlFromCurrency.SelectedValue;
                string toCurrency = ddlToCurrency.SelectedValue;

                double conversionRate = await GetConversionRateAsync(fromCurrency, toCurrency);
                if (conversionRate > 0)
                {
                    double convertedAmount = amount * conversionRate;
                    lblResult.Text = $"{amount} {fromCurrency} = {convertedAmount:F2} {toCurrency}";
                }
                else
                {
                    lblResult.Text = "Conversion rate not available.";
                }
            }
            else
            {
                lblResult.Text = "Please enter a valid amount.";
            }
        }

        private async Task<double> GetConversionRateAsync(string fromCurrency, string toCurrency)
        {
            try
            {
                string apiKey = "4ae18cc65b63382d10732c4fdcff6ffe"; // Your API key
                string url = $"https://api.exchangerate-api.com/v4/latest/{fromCurrency}?apikey={apiKey}";

                HttpResponseMessage response = await httpClient.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    dynamic data = JsonConvert.DeserializeObject(jsonResponse);

                    if (data != null && data.rates[toCurrency] != null)
                    {
                        return (double)data.rates[toCurrency];
                    }
                }
            }
            catch (Exception ex)
            {
                // Log or handle the error
                lblResult.Text = "Error occurred: " + ex.Message;
            }

            return 0; // Default to 0 if the rate is not found or an error occurred
        }
    }

}
