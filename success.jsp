<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bike Rental</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0c4e7;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: rgb(167, 216, 212);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .bike-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .bike-card {
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 10px;
            background: #fff;
            cursor: pointer;
            margin: 10px;
        }
        .bike-card img {
            width: 200px;
            height: 150px;
            border-radius: 5px;
        }
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Select a Bike</h2>
        <div class="bike-list" id="bikeList"></div>
        
        <h2>Add Your Bike</h2>
        <form id="addBikeForm">
            <input type="text" id="bikeNameInput" placeholder="Bike Name" required>
            <input type="number" id="bikePriceInput" placeholder="Price per Hour (₹)" required>
            <input type="text" id="bikeImageInput" placeholder="Image URL" required>
            <button type="submit">Add Bike</button>
        </form>
    </div>
    
    <div class="modal hidden" id="bookingModal">
        <div class="modal-content">
            <h2 id="bikeName"></h2>
            <p>Price: ₹<span id="bikePrice"></span>/hr</p>
            <label>Enter Hours:</label>
            <input type="number" id="hours" min="1" value="1">
            <p>Total Cost: ₹<span id="totalCost"></span></p>
            <p>Instructions: Pick up your bike from our nearest rental station.</p>
            <p>Ensure you have a valid ID and safety gear.</p>
            <button onclick="closeModal()">Close</button>
        </div>
    </div>

    <script>
        let bikes = [
            { id: 1, name: "Mountain Bike", price: 40, image: "https://source.unsplash.com/300x200/?mountainbike" },
            { id: 2, name: "Road Bike", price: 40, image: "https://source.unsplash.com/300x200/?roadbike" },
            { id: 3, name: "Electric Bike", price: 40, image: "https://source.unsplash.com/300x200/?electricbike" }
        ];

        const bikeList = document.getElementById("bikeList");
        const bookingModal = document.getElementById("bookingModal");
        const bikeName = document.getElementById("bikeName");
        const bikePrice = document.getElementById("bikePrice");
        const totalCost = document.getElementById("totalCost");
        const hoursInput = document.getElementById("hours");

        function renderBikes() {
            bikeList.innerHTML = "";
            bikes.forEach(bike => {
                const bikeCard = document.createElement("div");
                bikeCard.classList.add("bike-card");
                bikeCard.innerHTML = `
                    <img src="${bike.image}" alt="${bike.name}">
                    <h3>${bike.name}</h3>
                    <p>₹${bike.price}/hr</p>
                    <button onclick="bookBike(${bike.id})">Book Now</button>
                `;
                bikeList.appendChild(bikeCard);
            });
        }

        function bookBike(bikeId) {
            const selectedBike = bikes.find(bike => bike.id === bikeId);
            bikeName.innerText = selectedBike.name;
            bikePrice.innerText = selectedBike.price;
            totalCost.innerText = selectedBike.price * hoursInput.value;
            bookingModal.classList.remove("hidden");

            hoursInput.oninput = function () {
                totalCost.innerText = selectedBike.price * hoursInput.value;
            };
        }

        function closeModal() {
            bookingModal.classList.add("hidden");
        }

        document.getElementById("addBikeForm").addEventListener("submit", function (e) {
            e.preventDefault();
            const name = document.getElementById("bikeNameInput").value;
            const price = document.getElementById("bikePriceInput").value;
            const image = document.getElementById("bikeImageInput").value;

            if (name && price && image) {
                const newBike = {
                    id: bikes.length + 1,
                    name,
                    price: parseInt(price),
                    image
                };
                bikes.push(newBike);
                renderBikes();
            }
        });

        renderBikes();
    </script>
</body>
</html>
