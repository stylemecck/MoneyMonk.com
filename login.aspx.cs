using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Replace with your actual authentication logic
            if (IsValidUser(username, password))
            {
                lblMessage.Text = "Login successful!";
                lblMessage.CssClass = "message success";
                // Redirect to another page or perform post-login actions here
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
                lblMessage.CssClass = "message error";
            }
        }

        // Sample user validation function
        private bool IsValidUser(string username, string password)
        {
            // Dummy validation logic
            return username == "admin" && password == "password";
        }
    }
    
}