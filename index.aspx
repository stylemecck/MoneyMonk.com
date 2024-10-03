<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2.Home" Async="true" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Money Monk | Home</title>
    <meta name="description" content="Money Monk offers fast, secure, and affordable money transfer services worldwide. No KYC required for wallet transactions.">
    <meta name="keywords" content="money transfer, currency exchange, secure transactions, international transfers">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/home.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
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
                            <li><a href="#service">Service </a></li>
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
        <div><span class="sp-head">No Kyc Required for money transation to your wallet.😊 </span></div>
        <section class="Con1">
            <div>
                <h1>Welcome to MoneyMonk<span>.com</span></h1>
                <p>At Money Monk, we understand that transferring money is more than just a transaction — it’s about connecting people, supporting loved ones, and empowering dreams. That's why we’ve built a platform that puts speed, security, and affordability at the forefront of every transfer.</p>
                <div class="head-button">
                    <a href="./about.html">
                        <button class="button">Read More</button></a>
                </div>
            </div>
        </section>
        <section class="converter-head" style="padding:2px 0px">
   
    <form id="form2" runat="server">
    <div class="container-con">
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
</section>

        <section id="service">
            <div class="card-head">
                <h2>Service - MoneyMonk</h2>
            </div>
            <div class="container">
                <div class="card">
                    <i class="fa-solid fa-building-columns"></i>
                    <h3>Instant Transfers:</h3>
                    <p>Send money instantly across borders to family, friends, or businesses. SwiftPay ensures that funds are delivered within minutes, reducing wait times compared to traditional bank transfers.</p>

                </div>


                <div class="card">
                    <i class="fa-solid fa-money-bill-trend-up"></i>
                    <h3>Low Transfer Fees</h3>
                    <p>Enjoy competitive rates with transparent pricing. SwiftPay charges minimal fees for transactions, ensuring more of your money reaches the recipient.</p>

                </div>
                <div class="card">
                    <i class="fa-solid fa-money-check-dollar"></i>
                    <h3>Multi-Currency Support</h3>
                    <p>Transfer money in multiple currencies, including USD, EUR, GBP, CAD, AUD, and many more. SwiftPay automatically converts currencies at competitive exchange rates.</p>

                </div>
                <div class="card">
                    <i class="fa-solid fa-shield"></i>
                    <h3>Secure Transactions</h3>
                    <p>SwiftPay uses advanced encryption protocols and two-factor authentication (2FA) to safeguard user data and transactions, ensuring a high level of security and compliance with international standards.</p>

                </div>
                <div class="card">
                    <i class="fa-solid fa-user"></i>
                    <h3>User-Friendly Interface</h3>
                    <p>The platform is designed with simplicity in mind, offering a clean and intuitive user experience for all age groups. Features like quick send, recipient history, and favorite contacts make the process hassle-free.</p>
                </div>
                <div class="card">
                    <i class="fa-solid fa-money-bill-transfer"></i>
                    <h3>Transaction Tracking</h3>
                    <p>Keep track of every transaction in real-time. SwiftPay provides detailed tracking information, including transfer status, estimated delivery times, and notifications upon completion.</p>

                </div>
                <div class="card">
                    <i class="fa-solid fa-headset"></i>
                    <h3>Customer Support</h3>
                    <p>24/7 customer support via chat, email, and phone to assist with any questions or issues. SwiftPay’s dedicated support team is available to ensure smooth and efficient transactions.</p>

                </div>
                <div class="card">
                    <i class="fa-solid fa-gift"></i>
                    <h3>Loyalty and Rewards Program</h3>
                    <p>Earn points or rewards with each transfer that can be redeemed for discounts on future transfers or partner offers.</p>

                </div>

            </div>
        </section>


     


        <section class="testi" style="padding: 5px 0px">
            <div class="testi-head">
                <h2>Testimonials - MoneyMonk</h2>
            </div>
            <div class="container1">
                <div class="card">

                    <h3>Money Mecck is a game-changer!</h3>
                    <p>"I’ve used several money transfer services in the past, but none compare to Money Monk. The transfers are lightning-fast, and I love the low fees. It's my go-to for sending money abroad."</p>
                    <span>— Sarah M., New York, USA</span>
                </div>


                <div class="card">
                    <h3>Reliable and secure transfers every time!</h3>
                    <p>"I send money to my family overseas every month, and Money Monk has made the process so easy and stress-free. The security features give me peace of mind, and the customer support is top-notch!"</p>
                    <span>— Raj P., London, UK</span>
                </div>
                <div class="card">
                    <h3>Best rates and easy to use!</h3>
                    <p>"Money Monk offers the best exchange rates I’ve found. Plus, their website is super user-friendly. I highly recommend it to anyone looking for a reliable way to send money internationally."</p>
                    <span>— Carlos R., Madrid, Spain</span>
                </div>
                <div class="card">
                    <h3>Excellent service and customer care!</h3>
                    <p>"I had an issue with a transfer, and the Money Monk team resolved it quickly. Their 24/7 customer support is fantastic, and I appreciate the personal touch they provide."</p>
                    <span>— Aisha K., Dubai, UAE</span>
                </div>
            </div>
        </section>

    <section class="faqs">
        <div class="fa-head">
           <div class="left-head-faqs">
            <h2>Frequently Asked <span>Questions</span></h2>
            <p>Maybe we already have an answer to your question? :) See below.</p>
           </div>
           <div class="right-head-faqs-image">
            <img src="https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fd999c2fb1571594aedf60232928d50bd.cdn.bubble.io%2Ff1721795987486x287951668246472900%2FFAQ%2520creative%2520mockup.webp?w=512&h=336&auto=compress&dpr=2&fit=max" alt="money Monk faqs" />
           </div>
        </div>
        </section>

    <section class="faqs-content2">
        <div class="left-faqs-con">

            <div class="capsul">
            <button class="faqs-heading">1. What is Money Monk?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Money Monk is a digital money transfer service that allows you to send money internationally quickly, securely, and affordably. Our platform supports transfers to over 100 countries with various payout options.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">2. How do I create an account?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>To create an account with Money Monk, simply visit our website or download our mobile app, click on the "Sign Up" button, and follow the prompts to enter your details. You’ll need to provide a valid email address or phone number and create a secure password.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">3. How can I send money using Money Monk?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Once you’re logged into your account, select the amount you wish to send, choose the recipient’s country and payment method, and enter the recipient’s details. Review your transaction, confirm the details, and complete the payment.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">4. What payment methods do you accept?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>We accept various payment methods, including credit/debit cards, bank transfers, and in some cases, mobile wallets. The available payment methods may vary depending on your location and the recipient’s country.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">5. How long does a transfer take?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Most transfers are processed instantly, but the exact time may vary depending on the destination country and payment method. You can track the status of your transfer in real-time through your Money Monk account.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">6. Are there any fees associated with sending money?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Yes, there are fees for sending money with Money Monk. Our fees are transparent and competitive, and we strive to offer the best value for your transactions. You’ll be able to see the fees before confirming your transfer.</p>
            </div>
                </div>
        </div>

        <div class="right-faqs-con">

            <div class="capsul">
            <button class="faqs-heading">7. How do you ensure the security of my transactions?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>We use advanced encryption technologies and two-factor authentication to protect your personal and financial information. Money Monk complies with international security standards and regulations to ensure your transactions are safe and secure.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">8. Can I track my transfer?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Yes, you can track your transfer in real-time through your Money Monk account. You’ll receive notifications about the status of your transfer, including when it’s completed.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">9. What should I do if I encounter a problem with my transfer?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>If you encounter any issues with your transfer, contact our 24/7 customer support team immediately. You can reach us via chat, email, or phone, and our team will assist you in resolving the issue as quickly as possible.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">10. How do I get in touch with customer support?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>You can contact our customer support team through our website’s live chat feature, via email at support@moneymonk.com, or by calling our support hotline. We are available 24/7 to assist you with any questions or issues.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">11. Can I cancel a transfer once it has been sent?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>Once a transfer is processed, it typically cannot be canceled. However, if you encounter any issues or need to make changes, contact our customer support team for assistance as soon as possible.</p>
            </div>
                </div>

            <div class="capsul">
            <button class="faqs-heading">12. How do I update my account information?<i class="fa-solid fa-plus"></i></button>
            <div class="faqs-content">
                <p>To update your account information, log into your Money Monk account and navigate to the account settings. From there, you can update your personal details, payment methods, and security settings.</p>
            </div>
            </div>
           
        </div>
        
    </section>

        <section class="footer">
            <p class="cp-text">
                © Copyright 2024 Money Monk. All rights reserved. | Made ❤️ By Satyam Singh
            </p>
        </section>
   <script>
       document.addEventListener('DOMContentLoaded', function () {
           const faqHeadings = document.querySelectorAll('.faqs-heading');

           faqHeadings.forEach(heading => {
               heading.addEventListener('click', function () {
                   // Toggle active class
                   this.classList.toggle('active');

                   // Get the next element (the content)
                   const content = this.nextElementSibling;

                   // Toggle visibility
                   if (content.style.display === 'block') {
                       content.style.display = 'none';
                   } else {
                       content.style.display = 'block';
                   }
               });
           });
       });


       function toggleMenu() {
           const menu = document.querySelector('.menu_mid');
           if (menu.style.display === 'block') {
               menu.style.display = 'none';
           } else {
               menu.style.display = 'block';
           }
       }
   </script>


</body>
</html>
