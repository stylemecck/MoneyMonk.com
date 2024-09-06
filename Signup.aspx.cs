using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            // Basic validation
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                lblMessage.Text = "All fields are required.";
                lblMessage.CssClass = "message error";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";
                lblMessage.CssClass = "message error";
                return;
            }

            // Check if the username already exists
            if (UserExists(username))
            {
                lblMessage.Text = "Username already exists.";
                lblMessage.CssClass = "message error";
                return;
            }

            // Register the new user
            bool success = RegisterUser(username, password);

            if (success)
            {
                lblMessage.Text = "Sign up successful! You can now log in.";
                lblMessage.CssClass = "message success";
                // Optionally redirect to login page or other page
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                lblMessage.Text = "An error occurred. Please try again.";
                lblMessage.CssClass = "message error";
            }
        }

        private bool UserExists(string username)
        {
            // Replace with your actual user existence check logic
            // For example, check against a database
            // Here we'll just assume no users exist
            return false;
        }

        private bool RegisterUser(string username, string password)
        {
            // Replace with your actual user registration logic
            // For example, save user details in a database
            // Here we'll just return true to simulate success
            return true;
        }
    }
}
    