<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication2.Signup" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Sign Up</title>
 
    <link rel="stylesheet" type="text/css" href="CSS/Home.css" />
    <style>
        /* Add this to your existing CSS file */

.signup-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f4f4f4;
}

.signup-form {
    background: #fff;
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

.signup-form h1 {
    margin-bottom: 1.5rem;
    font-size: 24px;
    color: #333;
}

.signup-form .input-field {
    width: 100%;
    padding: 0.75rem;
    margin-bottom: 1rem;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-signup {
    width: 100%;
    padding: 0.75rem;
    background-color: #007bff;
    border: none;
    color: #fff;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

.btn-signup:hover {
    background-color: #0056b3;
}

.btn-login {
    display: inline-block;
    width: 100%;
    padding: 0.75rem;
    background-color: #28a745;
    border: none;
    color: #fff;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    text-align: center;
    text-decoration: none;
        margin: 11px auto;
}

.btn-login:hover {
    background-color: #218838;
}

.message {
    margin-top: 1rem;
    font-size: 14px;
}

.message.success {
    color: #28a745;
}

.message.error {
    color: #dc3545;
}

    </style>
</head>
<body>
    <div>
    <header class="sticky">
        <nav class="navbar">
            <div class="Logo">
                <img src="https://img.freepik.com/free-vector/money-logo-design-vector_474888-2076.jpg" alt="Logo" />
            </div>
            <span class="menu-toggle" onclick="toggleMenu()">&#9776;</span>
            <div class="menu1">
                <div class="menu_mid">
                    <ul>
                        <li><a href="Home.aspx">Home </a></li>
                        <li><a href="Home.aspx#service">Service </a></li>
                        <li><a href="./about.html">About </a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                        <li><a href="WebForm1.aspx">Currency Converter</a></li>

                    </ul>
                </div>
                <div class="menuRight">
                    <ul>
                        <li><a href="login.aspx">Login</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</div>
    <form id="form1" runat="server">
        <div class="signup-container">
            <div class="signup-form">
                <h1>Sign Up</h1>
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" />

                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field" />

                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-field" />

                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn-signup" OnClick="btnSignUp_Click" />

                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

                <div class="login-link">
                    <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" CssClass="btn-login">Already have an account? Login</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
     <section class="footer">
     <p class="cp-text">
         © Copyright 2024 Money Monk. All rights reserved. | Made ❤️ By Satyam Singh
     </p>
 </section>
</body>
</html>
