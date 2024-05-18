<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="JavaClasses.*"%>
<%
String name = null, pass = null;
name = request.getParameter("name");
pass = request.getParameter("pass");
%>
<%
ResultSet rs = null;
rs = DB.getResultSetObj(name, pass);
rs.next();
%>


<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>home</title>

<!-- ---linked glasses favicon--- -->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<!-- ---linked font awesome cdn--- -->
<link rel="stylesheet" href="index.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- ---linked style.css file--- -->
<link rel="stylesheet" href="style.css" />

<!-- ---linked media.css file--- -->
<link rel="stylesheet" href="media.css" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<!-- ---linked font awesome cdn--- -->
<link rel="stylesheet" href="index.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- ---linked style.css file--- -->
<link rel="stylesheet" href="style.css" />

<!-- ---linked media.css file--- -->
<link rel="stylesheet" href="media.css" />
<style>
body {
	background-color: #7acc90; /* Set background color to #7acc90 */
}

/* Internal CSS for profile page */

/* Main content */
.main-profile {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.profile-container {
	text-align: center;
}

.profile-image-container {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	overflow: hidden;
	margin: 0 auto 20px;
	position: relative;
}

.profile-image-container img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.profile-image-upload input {
	display: none;
}

.profile-image-upload label {
	position: absolute;
	bottom: 0;
	right: 0;
	background-color: #fff;
	border-radius: 50%;
	cursor: pointer;
	padding: 5px;
}

.profile-info h2 {
	margin: 10px 0;
}

.profile-info p {
	margin: 0;
}
/* Logout button animation */
.logout-button button {
    background-color:#ffbb00; /* Initial color */
    border: none;
    color: white; /* Text color */
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 20px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.5s, color 0.5s, transform 0.5s; /* Transition duration increased to 0.5s */
}

/* Logout button hover effect */
.logout-button button:hover {
    background-color: black; /* Black background on hover */
    color: red; /* Red text on hover */
    transform: translateY(-2px); /* Move button up slightly on hover */
}

/* Logout button click effect */
.logout-button button:active {
    transform: translateY(1px); /* Move button down slightly when clicked */
}

</style>
</head>
</head>
<body>
	<header class="header">

		<!-- ---header logo--- -->
		<a href="#" class="header-logo"> <img src="images/logo.png"
			alt="Logo" />
		</a>

		<!-- ---navigation--- -->
		<nav class="navigation">

			<ul class="main-list">
				<li><a href="index.jsp?name=<%=name%>&pass=<%=pass%>">home</a></li>
				<li><a href="Products.jsp?name=<%=name%>&pass=<%=pass%>">products</a></li>
				<li><a href="#">pages +</a>
					<ul class="sub-list">
						<li><a href="About.jsp?name=<%=name%>&pass=<%=pass%>">about</a></li>
						<li><a href="Blogs.jsp?name=<%=name%>&pass=<%=pass%>">blogs</a></li>
					</ul></li>
				<li><a href="Contact.jsp?name=<%=name%>&pass=<%=pass%>">contacts</a></li>
				<%
				if (name != null && !name.isEmpty()) {
				%>
				<li><a href="Profile.jsp?name=<%=name%>&pass=<%=pass%>"><%=name%></a></li>
				<%
				} else {
				%>
				<li><a href="#">account +</a>
					<ul class="sub-list">
						<li><a href="Login.jsp">login</a></li>
						<li><a href="Register.jsp">register</a></li>
					</ul></li>
				<%
				}
				%>
			</ul>
		</nav>


		<!-- ---header icons--- -->
		<div class="header-icons">
			<div id="search-icon" class="fas fa-search icon"></div>
			<a href="Cart.jsp" class="fas fa-shopping-cart icon"></a>
			<div id="menu-icon" class="fas fa-bars icon"></div>
		</div>

		<!-- --- header search form--- -->
		<form action="#" class="search-form" autocomplete="off">
			<input type="search" name="search" id="search-box"
				placeholder="search here..." /> <label for="search-box"
				class="fas fa-search"></label>
		</form>
	</header>


	<main class="main-profile">
		<div class="profile-container">
			<!-- Circular area for image display -->
			<div class="profile-image-container">
				<img id="previewImage" src="images/ProfileImg/<%=rs.getString(4)%>"
					alt="person.jpeg">
			</div>

			<!-- File input field -->
			<div class="profile-image-upload">
				<input type="file" name="image" id="imageInput" accept="image/*"
					onchange="previewImage(this)" required> <label
					for="imageInput"><i class="fas fa-camera"></i></label>
			</div>

			<!-- User information -->
			<div class="profile-info">
				<h2><%=rs.getString(2)%></h2>
				<p><%=rs.getString(1)%></p>
			</div>
			<div class="logout-button">
				<button onclick="window.location.href='Login.jsp'">Logout</button>
			</div>
		</div>
	</main>

	<footer class="footer">
		<!-- Footer content -->
		<!-- You can add your footer content here -->
	</footer>

	<!-- JavaScript -->
	<script>
		// JavaScript for image preview
		function previewImage(input) {
			var preview = document.getElementById('previewImage');
			var file = input.files[0];
			var reader = new FileReader();

			reader.onloadend = function() {
				preview.src = reader.result;
			}

			if (file) {
				reader.readAsDataURL(file);
			} else {
				preview.src = 'default-image.jpg'; // Default image if no image is selected
			}
		}
	</script>
</body>
</html>
