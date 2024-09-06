<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication2.contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="css/home.css" />
    <link rel="stylesheet" type="text/css" href="css/contact.css" />
    <style>
        /* Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
    <script>
        function openPreview() {
            document.getElementById('previewModal').style.display = 'block';
        }

        function closePreview() {
            document.getElementById('previewModal').style.display = 'none';
        }
    </script>
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

    <div class="contact-content">
        <h1>CONTACT US</h1>
    </div>

    <div class="contact-container">
        <form id="form1" runat="server">
            <div class="contact-form">
                <div class="contact-form-left">
                    <asp:Label ID="LabelError" runat="server" CssClass="error-message" Visible="false" />
                    <asp:Label ID="LabelSuccess" runat="server" CssClass="success-message" Visible="false" />

                    <asp:Label ID="Label1" runat="server" CssClass="lable-con" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" CssClass="input-con" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" CssClass="lable-con" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox2" TextMode="Email" CssClass="input-con" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" CssClass="lable-con" Text="Phone"></asp:Label>
                    <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="input-con" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" CssClass="lable-con" Text="Service"></asp:Label>
                    <asp:TextBox ID="TextBox4" CssClass="input-con" runat="server"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" CssClass="lable-con" Text="Message"></asp:Label>
                    <asp:TextBox ID="TextBox6" CssClass="input-con" TextMode="MultiLine" runat="server" Rows="5"></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Preview" OnClientClick="openPreview(); return false;" />
                   <asp:Button ID="ButtonSubmit" CssClass="button" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />


                </div>
            </div>
        </form>

        <!-- The Modal -->
        <div id="previewModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closePreview()">&times;</span>
                <h2>Preview Your Submission</h2>
                <div class="preview-item"><b>Name:</b> <asp:Label ID="previewName" runat="server" /></div>
                <div class="preview-item"><b>Email:</b> <asp:Label ID="previewEmail" runat="server" /></div>
                <div class="preview-item"><b>Phone:</b> <asp:Label ID="previewPhone" runat="server" /></div>
                <div class="preview-item"><b>Service:</b> <asp:Label ID="previewService" runat="server" /></div>
                <div class="preview-item"><b>Message:</b> <asp:Label ID="previewMessage" runat="server" /></div>
            </div>
        </div>

        <div class="content-form-right">
            <div>
                <p class="letterSpace">CONTENT DETAILS</p>
                <p>support@moneymonk.com</p>
                <p>+91 999,999,9999</p>
                <div>
                    <p><b>Westfield</b></p>
                    <p>233 North Avenue E.</p>
                    <p>Westfield, NJ 07090</p>
                </div>
                <div>
                    <p><b>Short Hills Office</b></p>
                    <p>549 Millburn Ave.</p>
                    <p>Short Hills, NJ 07078</p>
                </div>
                <div>
                    <p><b>Ridgewood</b></p>
                    <p>2-4 Garber Sq,</p>
                    <p>Ridgewood, NJ 07450</p>
                </div>
                <div>
                    <p><b>Red Bank</b></p>
                    <p>301 Maple Ave.,</p>
                    <p>Red Bank NJ 07701</p>
                </div>
            </div>
        </div>
    </div>
    <script>
        function openPreview() {
            document.getElementById('previewName').innerText = document.getElementById('TextBox1').value;
            document.getElementById('previewEmail').innerText = document.getElementById('TextBox2').value;
            document.getElementById('previewPhone').innerText = document.getElementById('TextBox3').value;
            document.getElementById('previewService').innerText = document.getElementById('TextBox4').value;
            document.getElementById('previewMessage').innerText = document.getElementById('TextBox6').value;
            document.getElementById('previewModal').style.display = 'block';
        }

        function closePreview() {
            document.getElementById('previewModal').style.display = 'none';
        }

        function submitForm() {
            document.getElementById('form1').submit();
        }

    </script>
</body>
</html>
