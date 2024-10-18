<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication12.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="Contact-Banner">
            <h1>Contact Now</h1>
        </div>
      
        <div class="Contact-Form">
           <div>
            <h4>Our Physical Address</h4>
            <ul>
                <li><b>Address</b> : 456 Vacation Street</li>
                <li><b>City</b> : Relaxington</li>
                <li><b>State / Province</b> : Serene Territory</li>
                <li><b>Postal Code</b> : 98765</li>
                <li><b>Country</b> : Tranquiland</li>
            </ul>
        </div>

                <div class="input-div">
                 <asp:Panel runat="server" DefaultButton="btnSubmit">
                    <asp:TextBox runat="server" ID="txtName" placeholder="Name"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="Email"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtPhoneNumber" placeholder="Phone Number"></asp:TextBox>

                    <asp:DropDownList runat="server" ID="ddlPackages" AutoPostBack="true">
                        <asp:ListItem Text="Select Package" Value="" />
                        <asp:ListItem Text="Kashmir, India" Value="Kashmir" />
                        <asp:ListItem Text="Istanbul, Turkey" Value="Istanbul" />
                        <asp:ListItem Text="Paris, France" Value="Paris" />
                        <asp:ListItem Text="Bali, Indonesia" Value="Bali" />
                    </asp:DropDownList>
                    <asp:Button runat="server" ID="btnSubmit" Text="Book Now" OnClick="btnSubmit_Click" />
                </asp:Panel> 
             </div>
        </div>

        <style>
            .faq-section {
                  margin: 20px 200px 20px;
              background-color: #fff;
              border-radius: 8px;
              box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
              padding: 20px;
            }
            .faq-item {
                margin-bottom: 20px;
            }

            .faq-question {
                font-size: 18px;
                font-weight: bold;
                color: #333;
                cursor : pointer ;
            }

            .faq-answer {
                font-size: 16px;
                color: #666;
                margin-top: 5px;
            }
        </style>
        <h2 style="text-align:center;font-size:35px;">FAQ</h2>
         <div class="faq-section">
            <div class="faq-item">
              <div class="faq-question">How can I plan my dream vacation?</div>
              <div class="faq-answer">To plan your dream vacation, explore our destination guides, select your preferred locations, and customize your itinerary. Click on the "Plan Now" button to get started!</div>
            </div>

            <div class="faq-item">
              <div class="faq-question">Are there any hidden fees in your travel packages?</div>
              <div class="faq-answer">No, our travel packages are transparent. The displayed price includes all costs, and there are no hidden fees. Feel free to review the details of each package before making your decision.</div>
            </div>

            <div class="faq-item">
              <div class="faq-question">What should I do if my flight is delayed or canceled?</div>
              <div class="faq-answer">In the event of a flight delay or cancellation, please contact our customer support immediately. We will assist you in rebooking or provide alternative solutions to ensure you reach your destination smoothly.</div>
            </div>
          </div>

</asp:Content>
