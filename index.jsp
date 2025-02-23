
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent Your Ride</title>
</head>
<body>
	<a href="register.jsp">Register here</a>
	<a href="login.jsp">Login here</a>

    <header>
        <h1>🚴 Rent Your Ride</h1>
    </header>

    <main>
        <button id="browseBtn">Browse More Bikes</button>

        <div class="bike-gallery">
            <div class="bike-card">
                <img src="bike1.jpg" alt="Mountain Bike">
                <h3>Mountain Bike</h3>
                <p class="price">₹999/day</p>
                <input type="text" placeholder="Enter pickup address" class="address-input">
                <button class="rent-btn">Rent Now</button>
            </div>
            <div class="bike-card">
                <img src="bike2.jpg" alt="Sport Bike">
                <h3>Sport Bike</h3>
                <p class="price">₹1299/day</p>
                <input type="text" placeholder="Enter pickup address" class="address-input">
                <button class="rent-btn">Rent Now</button>
            </div>
        </div>

        <div class="faq-section">
            <h2>Need Help? 🤔</h2>
            <button class="faq-btn">🚴 How do I rent a bike?</button>
            <p class="faq-content">Browse bikes, select one, and book online with ease.</p>

            <button class="faq-btn">💳 Payment options?</button>
            <p class="faq-content">We accept Credit/Debit Cards, UPI, and COD.</p>

            <button class="faq-btn">📍 Pickup locations?</button>
            <p class="faq-content">Choose from multiple locations during booking.</p>
        </div>
    </main>

    <script src="script.js"></script>

</body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fad0c4, #ffdde1);
    min-height: 100vh;
    text-align: center;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
}

header {
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    padding: 20px;
    font-size: 28px;
    font-weight: bold;
    width: 100%;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    font-size: 42px;
    color: #fff;
    text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

#browseBtn {
    background: linear-gradient(90deg, #ff758c, #ff7eb3);
    color: white;
    padding: 12px 20px;
    border: none;
    font-size: 18px;
    cursor: pointer;
    border-radius: 30px;
    margin: 20px 0;
    transition: 0.3s ease-in-out;
    box-shadow: 2px 4px 10px rgba(255, 117, 140, 0.5);
}

#browseBtn:hover {
    transform: scale(1.05);
}

.bike-gallery {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
    padding: 20px;
}

.bike-card {
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.1);
    width: 280px;
    transition: transform 0.3s;
}

.bike-card:hover {
    transform: scale(1.05);
}

.bike-card img {
    width: 100%;
    border-radius: 10px;
}

.price {
    font-weight: bold;
    color: #ff4757;
    font-size: 18px;
}

.address-input {
    width: 90%;
    padding: 8px;
    margin-top: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.rent-btn {
    background: linear-gradient(90deg, #4caf50, #2ecc71);
    color: white;
    border: none;
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    cursor: pointer;
    border-radius: 20px;
    transition: 0.3s;
    box-shadow: 2px 4px 10px rgba(76, 175, 80, 0.5);
}

.rent-btn:hover {
    transform: scale(1.05);
}

.faq-section {
    margin-top: 30px;
    width: 80%;
    max-width: 500px;
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.1);
}

.faq-btn {
    background: linear-gradient(90deg, #6a89cc, #a29bfe);
    color: white;
    border: none;
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    cursor: pointer;
    border-radius: 20px;
    transition: 0.3s;
}

.faq-btn:hover {
    transform: scale(1.05);
}

.faq-content {
    display: none;
    margin-top: 5px;
    font-size: 14px;
    color: white;
}

</style>
</html>
