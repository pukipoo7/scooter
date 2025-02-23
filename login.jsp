<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Bike Rental Login</title>
		<style>
			body {
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100vh;
				background: url('https://www.pixel4k.com/wp-content/uploads/2019/03/abstract-minimal-blur-4k_1551646032.jpg') no-repeat center center/cover;
				font-family: Arial, sans-serif;
			}
			.login-container {
				background: rgba(255, 255, 255, 0.9);
				padding: 20px;
				border-radius: 12px;
				box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
				width: 320px;
				text-align: center;
			}
			h2 {
				margin-bottom: 20px;
			}
			.input-group {
				margin-bottom: 15px;
				text-align: left;
			}
			label {
				display: block;
				margin-bottom: 5px;
				font-weight: bold;
			}
			input {
				width: 100%;
				padding: 8px;
				border: 1px solid #ccc;
				border-radius: 6px;
			}
			.forgot-password {
				display: block;
				margin-bottom: 15px;
				font-size: 14px;
				color: #007bff;
				text-decoration: none;
			}
			.forgot-password:hover {
				text-decoration: underline;
			}
			.login-button {
				width: 100%;
				padding: 10px;
				background-color: #007bff;
				color: white;
				border: none;
				border-radius: 6px;
				cursor: pointer;
				font-size: 16px;
			}
			.login-button:hover {
				background-color: #0056b3;
			}
		</style>
	</head>
	<body>
		<div class="login-container">
			<h2>Bike Rental Login</h2>
			<div class="input-group">
				<label for="email">Email</label>
				<input type="email" id="email" placeholder="Enter your email">
			</div>
			<div class="input-group">
				<label for="password">Password</label>
				<input type="password" id="password" placeholder="Enter your password">
			</div>
			<a href="#" class="forgot-password">Forgot Password?</a>
			<button class="login-button">Login</button>
		</div>
	</body>
	</html>
	