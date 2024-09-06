using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace WebApplication2
{
    public partial class contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your Page_Load logic here
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve form data
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string phone = TextBox3.Text;
            string service = TextBox4.Text;
            string message = TextBox6.Text;

            // Perform validation (optional)
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(service) || string.IsNullOrEmpty(message))
            {
                LabelError.Text = "All fields are required.";
                LabelError.Visible = true;
                return;
            }

            // Example: Save to database or send email
            // SaveFormData(name, email, phone, service, message);

            // Show success message
            LabelSuccess.Text = "Your message has been sent successfully!";
            LabelSuccess.Visible = true;

            // Optionally, clear the form fields
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
        }
        private void SaveFormData(string name, string email, string phone, string service, string message)
        {
            // Example code for database saving
            using (SqlConnection conn = new SqlConnection("MyConnectionString"))
            {
                string query = "INSERT INTO ContactFormResponses (Name, Email, Phone, Service, Message) VALUES (@Name, @Email, @Phone, @Service, @Message)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Service", service);
                    cmd.Parameters.AddWithValue("@Message", message);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}
