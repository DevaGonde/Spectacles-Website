<?xml version='1.0' encoding='UTF-8' ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .error-container {
            text-align: center;
        }

        h1 {
            color: #dc3545;
        }

        p {
            color: #6c757d;
        }

        .redirect-button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .redirect-button:hover {
            background-color: #0056b3;
        }
    </style>
     <!-- ---linked glasses favicon--- -->
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

    <!-- ---linked font awesome cdn--- -->
    <link
      rel="stylesheet"
      href="index.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <!-- ---linked style.css file--- -->
    <link rel="stylesheet" href="style.css" />

    <!-- ---linked media.css file--- -->
    <link rel="stylesheet" href="media.css" />
</head>
<body>

    <div class="error-container">
        <h1>Oops! Something went wrong.</h1>
        <p>We're sorry, but an unexpected error occurred.</p>
        <button class="redirect-button" onclick="redirectToHome()">Go to Home Page</button>
    </div>

    <script>
        function redirectToHome() {
            window.location.href = "/index.jsp";
        }
    </script>
</body>
</html>
