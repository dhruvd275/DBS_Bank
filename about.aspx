<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication12.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Banner -->
        <div class="About-Banner">
            <h1>About Us</h1>
        </div>
        <!-- About Section -->
        <div class="About-Section">
            <div>
                <h3>Your Gateway to Unforgettable Adventures</h3>
                <p>Welcome to Taravel Agency, where every travel is an opportunity to tell a story. We understand the specific demands of adventurers like you, and our mission is to deliver experiences that will stay with you.</p>
                <a href="contact.html">Book Now!</a>
            </div>
            <div>
                <img src="./assets/images/about-us.jpg" alt="">
            </div>
        </div>
        <!-- Testimonial Section -->
        <div class="Testimonial-Section">
            <h2>Our Testimonials</h2>
            <div class="Testimonials">
                <div>
                    <img src="./assets/images/person1.jpg" alt="Sarah Thompson">
                    <h4>Sarah Thompson</h4>
                    <h5>Denver, Colorado</h5>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <p>“Embarking on a journey with Travel Agency was an adventure beyond my wildest dreams. From navigating the lush trails of Costa Rica to experiencing the vibrant cultures of Morocco, each trip was a masterpiece. The attention to detail and the passion for creating unique experiences truly set them apart. I'm hooked for life!"</p>
                </div>
                <div>
                    <img src="./assets/images/person2.jpg" alt="Rose Marry">
                    <h4>Rose Mary</h4>
                    <h5>USA, Washington</h5>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <p>“Being a cultural enthusiast, I've explored various corners of the world, but Travel Agency brought a whole new dimension to my travels. The immersive cultural experiences and the carefully curated itineraries opened my eyes to the beauty of diversity. The team's dedication to authenticity and respect for local communities made every trip memorable.”</p>
                </div>
                <div>
                    <img src="./assets/images/person3.jpg" alt="James Turner">
                    <h4>James Turner</h4>
                    <h5>Sydney, Australia</h5>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <p>“Traveling with kids can be challenging, but Travel Agency made it a breeze. Our family safari in South Africa was not just a vacation; it was a bonding experience filled with laughter, wildlife wonders, and moments we'll cherish forever. The team's commitment to family-friendly adventures ensured everyone, from the littlest to the oldest, had a blast!”</p>
                </div>
            </div>
        </div>

</asp:Content>
