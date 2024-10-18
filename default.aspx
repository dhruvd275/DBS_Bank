<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication12._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="Banner">
            <h1>Firstflight Travels</h1>
            <p>Plan Your Trip with us and travel around the world with the most affordable packages !</p>
            <a href="contact.html">Register Now!</a>
        </div>
        <div class="Locations" id="location">
            <h2>Locations</h2>
            <div class="locations-grid">
                <div class="box box-1">
                    <h4>India</h4>
                    <p>Kashmir</p>
                </div>
                <div class="box box-2">
                    <h4>Turkey</h4>
                    <p>Istanbul</p>
                </div>
                <div class="box box-3">
                    <h4>France</h4>
                    <p>Paris</p>
                </div>
                <div class="box box-4">
                    <h4>Indonesia</h4>
                    <p>Bali</p>
                </div>
            </div>
        </div>
        <div class="Newsletter">
            <div>
                <h4>Newsletter</h4>
                <p>Subscribe to get offers and latest updates every week !</p>
            </div>
            <form action="">
                 <div class="input-div">
                      <input type="gmail" name="" id="" placeholder="E-mail">
                      <button type="submit"> Subscribe </button>
                 </div>
            </form>
        </div>
        </div>
</asp:Content>
