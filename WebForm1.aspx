
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" Async="true" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Currency Converter | Money Monk</title>
    <link rel="stylesheet" type="text/css" href="css/home.css" />
    <style>
        /* CSS Styling */
        .conbody {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 1200px;
            width: 100%;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        .converter-form {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            align-items: center;
        }
        .converter-form label {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .converter-form input, .converter-form select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
        }
        .converter-form button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }
        .converter-form button:hover {
            background-color: #0056b3;
        }
        .result {
            margin-top: 20px;
            font-size: 18px;
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
                    <li><a href="login.aspx"> Login</a></li>
                    
                </ul>
            </div>
                </div>
        </nav>
    </header>
</div>
    <div class="conbody">
        <form id="form1" runat="server">
            <div class="container">
                <h2>Currency Converter</h2>
                <div class="converter-form">
                    <label for="txtAmount">Amount:</label>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>

                    <label for="ddlFromCurrency">From Currency:</label>
                    <asp:DropDownList ID="ddlFromCurrency" runat="server">
                  
                        <asp:ListItem Text="USD" Value="USD"></asp:ListItem>
                        <asp:ListItem Text="EUR" Value="EUR"></asp:ListItem>
                        <asp:ListItem Text="GBP" Value="GBP"></asp:ListItem>
                        <asp:ListItem Text="AUD" Value="AUD"></asp:ListItem>
                        <asp:ListItem Text="CAD" Value="CAD"></asp:ListItem>
                        <asp:ListItem Text="JPY" Value="JPY"></asp:ListItem>
                        <asp:ListItem Text="CNY" Value="CNY"></asp:ListItem>
                        <asp:ListItem Text="INR" Value="INR"></asp:ListItem>
                        <asp:ListItem Text="CHF" Value="CHF"></asp:ListItem>
                        <asp:ListItem Text="SEK" Value="SEK"></asp:ListItem>
                        <asp:ListItem Text="NZD" Value="NZD"></asp:ListItem>
                       
                    </asp:DropDownList>

                    <label for="ddlToCurrency">To Currency:</label>
                    <asp:DropDownList ID="ddlToCurrency" runat="server">
                        
                        <asp:ListItem Text="USD" Value="USD"></asp:ListItem>
                        <asp:ListItem Text="EUR" Value="EUR"></asp:ListItem>
                        <asp:ListItem Text="GBP" Value="GBP"></asp:ListItem>
                        <asp:ListItem Text="AUD" Value="AUD"></asp:ListItem>
                        <asp:ListItem Text="CAD" Value="CAD"></asp:ListItem>
                        <asp:ListItem Text="JPY" Value="JPY"></asp:ListItem>
                        <asp:ListItem Text="CNY" Value="CNY"></asp:ListItem>
                        <asp:ListItem Text="INR" Value="INR"></asp:ListItem>
                        <asp:ListItem Text="CHF" Value="CHF"></asp:ListItem>
                        <asp:ListItem Text="SEK" Value="SEK"></asp:ListItem>
                        <asp:ListItem Text="NZD" Value="NZD"></asp:ListItem>
                        
                    </asp:DropDownList>

                    <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />

                    <div class="result">
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <section class="footer">
    <p class="cp-text">
        © Copyright 2024 Money Monk. All rights reserved. | Made ❤️ By Satyam Singh
    </p>
</section>
</body>
</html>
