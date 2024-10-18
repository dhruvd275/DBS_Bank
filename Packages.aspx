<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="WebApplication12.Packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
    .packages{
        display: flex;
        position : relative ;
        justify-content: space-between;
        gap: 50px;
        margin: 40px 100px;

        & > div {
                  padding : 20px ;
                  border-radius : 30px ;
                  border : 2px solid #17494a ;

            & img {
                width: 100%;
                height: 400px;
                border-radius : 20px ;
                object-fit: cover;
                object-position: top;
            }

            & h3 {
                margin: 10px 0px;
            }

            & span.book-btn{
                display : block;
                padding : 7px 20px;
                color : #fff ;
                background : #17494a;
                border : 2px solid #17494a ;
                border-radius : 10px ;
                width : fit-content ;
                cursor : pointer ;
                margin-top : 10px ;
                transition : .3s ease-in-out ;

                &:hover {
                            border : 2px solid #17494a ;
                            color : #17494a ;
                            background : transparent ;  
                        }
            }
        }
    }

    .Info-Box{
        border: 2px solid;
    padding: 10px 20px;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    position: absolute;
    width: fit-content;
    height: fit-content;
    background: #fff;
    display : none ;
    width:30%;
    box-shadow:2px 2px 2px 2px #ececec;

    & span#close {
    cursor: pointer;
    border : 2px solid #17494a ;
    border-radius: 50%;
    padding: 5px;
    margin: auto 0 auto auto;
    display: block;
    background : #17494a ;
    color : #fff ;
    width: fit-content;
    transition : .3s ease-in-out ;

    &:hover {
                border : 2px solid #17494a ;
                color : #17494a ;
                background : transparent ;  

           }
    }

        & div {

            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            margin: 5px 0px;

            & .increament-decrement {
        border: 2px solid #000;
        padding: 5px 10px;
    
                & span {
                    cursor: pointer;
                }
            }

        }
        #book_btn{
                display : block;
                padding : 7px 20px;
                color : #fff ;
                background : #17494a;
                border : 2px solid #17494a ;
                border-radius : 10px ;
                width : fit-content ;
                cursor : pointer ;
                margin-top : 10px ;
                transition : .3s ease-in-out ;

                &:hover {
                            border : 2px solid #17494a ;
                            color : #17494a ;
                            background : transparent ;  
                        }
            }

    }
        .total-price {
            background-color: #3498db;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin: 20px;
            display: inline-block;
        }

        #total {
            font-size: 24px;
            font-weight: bold;
        }
    </style>

     <div class="About-Banner">
         <h1>Packages</h1>   
     </div>
    <div class="packages">
        <div>
            <img src="./assets/images/country-1.jpg" alt="">
            <h3>Kashmir</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi quos dolore excepturi reiciendis distinctio officia tenetur exercitationem quis magnam provident.</p>
            <span id="kashmirBtn" class="book-btn">Book Now</span>
        </div>
        <div>
            <img src="./assets/images/country-2.jpg" alt="">
            <h3>Turkey</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi quos dolore excepturi reiciendis distinctio officia tenetur exercitationem quis magnam provident.</p>
            <span id="turkeyBtn" class="book-btn">Book Now</span>
        </div>
        <div>
            <img src="./assets/images/country-3.jpg" alt="">
            <h3>Paris</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi quos dolore excepturi reiciendis distinctio officia tenetur exercitationem quis magnam provident.</p>
            <span id="parisBtn" class="book-btn">Book Now</span>
        </div>
        <div>
            <img src="./assets/images/country-4.jpg" alt="">
            <h3>Bali</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi quos dolore excepturi reiciendis distinctio officia tenetur exercitationem quis magnam provident.</p>
            <span id="baliBtn" class="book-btn">Book Now</span>
        </div>

        <div class="Info-Box" id="infoBox">
    <span id="close">&#10006;</span>
    <h2 id="cityName"></h2>
    <div>
        <h4>No Of Persons</h4>
        <div class="increament-decrement">
            <span onclick="updateValue('noOfPersons', 1)">+</span>
            <span onclick="updateValue('noOfPersons', -1)">-</span>
        </div>
    </div>

    <div>
        <h4>No Of Infants</h4>
        <div class="increament-decrement">
            <span onclick="updateValue('noOfInfants', 1)">+</span>
            <span onclick="updateValue('noOfInfants', -1)">-</span>
        </div>
    </div>

    <div>
        <h4>Total Days</h4>
        <div class="increament-decrement">
            <span onclick="updateValue('totalDays', 1)">+</span>
            <span onclick="updateValue('totalDays', -1)">-</span>
        </div>
    </div>

    <p>No Of Persons: <b><span id="noOfPersons">1</span>&nbsp; = &nbsp;<span id="personPrice"></span> $</b></p>
    <p>No Of Infants: <b><span id="noOfInfants">1</span>&nbsp; = &nbsp;<span id="infantsPrice"></span> $</b></p>
    <p>Total Days: <b><span id="totalDays">1</span></b></p>
    <p>Total Price: <b><span id="totalPrice">0</span> $</b></p>

            <a href="ThankYouPage.aspx" id="book_btn">Book</a>
</div>

    </div>

    

     

    <script>
        let kashmirBtn = document.getElementById("kashmirBtn");
        let turkeyBtn = document.getElementById("turkeyBtn");
        let parisBtn = document.getElementById("parisBtn");
        let baliBtn = document.getElementById("baliBtn");
        let cityName = document.getElementById("cityName");
        let infoBox = document.getElementById("infoBox");
        let closeBtn = document.getElementById("close");

        let pricePerPerson = 100;
        let pricePerInfant = 50;
        let pricePerDay = 200;
        cityName.textContent = "Kashmir"

        function updateValue(id, value) {
            let element = document.getElementById(id);
            let currentValue = parseInt(element.innerText);
            let newValue = currentValue + value;

            newValue = Math.max(newValue, 0);

            element.innerText = newValue;
            updateTotalPrice();
        }

        function updateTotalPrice() {
            let noOfPersons = parseInt(document.getElementById('noOfPersons').innerText);
            let noOfInfants = parseInt(document.getElementById('noOfInfants').innerText);
            let totalDays = parseInt(document.getElementById('totalDays').innerText);

            let totalPrice = calculateTotalPrice(noOfPersons, noOfInfants, totalDays);

            document.getElementById('totalPrice').innerText = totalPrice;
        }

        function calculateTotalPrice(noOfPersons, noOfInfants, totalDays) {
            document.getElementById("personPrice").innerText = noOfPersons * pricePerPerson;
            document.getElementById("infantsPrice").innerText = noOfInfants * pricePerInfant;

            return (noOfPersons * pricePerPerson) + (noOfInfants * pricePerInfant) + (totalDays * pricePerDay);
        }

        kashmirBtn.addEventListener("click", function () {
            pricePerPerson = 200;
            pricePerInfant = 100;
            pricePerDay = 400;
            cityName.textContent = "Kashmir"
            infoBox.style.display= "block";
            updateTotalPrice();
        });

        turkeyBtn.addEventListener("click", function () {
            pricePerPerson = 150;
            pricePerInfant = 75;
            pricePerDay = 250;
            cityName.textContent = "Turkey"
            infoBox.style.display= "block";
            updateTotalPrice();
        });

        parisBtn.addEventListener("click", function () {
            pricePerPerson = 180;
            pricePerInfant = 90;
            pricePerDay = 300;
            cityName.textContent = "Paris"
            infoBox.style.display= "block";
            updateTotalPrice();
        });

        baliBtn.addEventListener("click", function () {
            pricePerPerson = 120;
            pricePerInfant = 60;
            pricePerDay = 220;
            cityName.textContent = "Bali"
            infoBox.style.display= "block";
            updateTotalPrice();
        });

        closeBtn.addEventListener("click", function () {
            infoBox.style.display= "none";
        });

        updateTotalPrice();
    </script>


</asp:Content>
