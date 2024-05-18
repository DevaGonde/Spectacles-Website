<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Register</title>
<style>
#imagePreview {
	width: 120px;
	height: 120px;
	border-radius: 50%;
	overflow: hidden;
	border: 2px solid #ccc;
	display: flex;
	justify-content: center;
	align-items: center;
	cursor: pointer;
}

#imagePreview img {
	max-width: 100%;
	max-height: 100%;
	border-radius: 50%;
	object-fit: cover;
	display: block; /* Ensure image is a block element */
	margin: auto; /* Center the image horizontally */
}
</style>
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
<link rel="stylesheet" href="index.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="media.css" />
</head>
<body>
	<header class="header">
		<a href="#" class="header-logo"> <img src="images/logo.png"
			alt="Logo" />
		</a>
		<nav class="navigation">
			<ul class="main-list">
				<li><a href="index.jsp">home</a></li>
				<li><a href="Products.jsp">products</a></li>
				<li><a href="#">pages +</a>
					<ul class="sub-list">
						<li><a href="About.jsp">about</a></li>
						<li><a href="Blogs.jsp">blogs</a></li>
					</ul></li>
				<li><a href="Contact.jsp">contacts</a></li>
				<li><a href="#">account +</a>
					<ul class="sub-list">
						<li><a href="Login.jsp">login</a></li>
						<li><a href="Register.jsp">register</a></li>
					</ul></li>
			</ul>
		</nav>
		<div class="header-icons">
			<div id="search-icon" class="fas fa-search icon"></div>
			<a href="Cart.jsp" class="fas fa-shopping-cart icon"></a>
			<div id="menu-icon" class="fas fa-bars icon"></div>
		</div>
		<form action="#" class="search-form" autocomplete="off">
			<input type="search" name="search" id="search-box"
				placeholder="search here..." /> <label for="search-box"
				class="fas fa-search"></label>
		</form>
	</header>

	<main class="main-register">
		<section class="user-register">
			<form action="SigninServlet" method="post" class="register-form"
				enctype="multipart/form-data">
				<div id="imagePreview">
					<img id="previewImage" src="images/person.jpeg" alt="Preview" />
				</div>
				<br>
				<br> <input type="file" id="image" name="image"
					accept="image/*" onchange="previewImage(this)" required /> <br>
				<br> <input type="text" name="username"
					placeholder="Enter your name" required /> <br>
				<br> <input type="email" name="email"
					placeholder="Enter your email" required /> <br>
				<br> <input type="password" name="pass"
					placeholder="Enter a password" required /> <br>
				<br> <input type="submit" value="Sign Up" />
			</form>
		</section>
	</main>

	<footer class="footer">
		<div class="footer-content">
			<div class="quick-links">
				<h3>quick links</h3>
				<a href="index.jsp"> <i class="fas fa-angle-right"></i> <span>home</span>
				</a> <a href="Products.jsp"> <i class="fas fa-angle-right"></i> <span>products</span>
				</a> <a href="About.jsp"> <i class="fas fa-angle-right"></i> <span>about</span>
				</a> <a href="Blogs.jsp"> <i class="fas fa-angle-right"></i> <span>blogs</span>
				</a> <a href="Contact.jsp"> <i class="fas fa-angle-right"></i> <span>contact</span>
				</a> <a href="Login.jsp"> <i class="fas fa-angle-right"></i> <span>login</span>
				</a> <a href="Register.jsp"> <i class="fas fa-angle-right"></i> <span>register</span>
				</a>
			</div>
			<div class="extra-links">
				<h3>extra links</h3>
				<a href="#"> <i class="fas fa-angle-right"></i> <span>my
						account</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>order</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>my
						wishlist</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>terms
						of use</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>privacy
						policy</span>
				</a>
			</div>
			<div class="follow-us">
				<h3>follow us</h3>
				<a href="https://www.facebook.com" target="_blank"> <i
					class="fab fa-facebook"></i> <span>facebook</span>
				</a> <a href="https://www.twitter.com" target="_blank"> <i
					class="fab fa-twitter"></i> <span>twitter</span>
				</a> <a href="https://www.instagram.com" target="_blank"> <i
					class="fab fa-instagram"></i> <span>instagram</span>
				</a> <a href="https://www.pinterest.com" target="_blank"> <i
					class="fab fa-pinterest"></i> <span>pinterest</span>
				</a> <a href="https://www.linkedin.com" target="_blank"> <i
					class="fab fa-linkedin"></i> <span>linkedin</span>
				</a> <a href="https://www.github.com" target="_blank"> <i
					class="fab fa-github"></i> <span>github</span>
				</a>
			</div>
			<div class="newsletter">
				<h3>newsletter</h3>
				<p>subscribe for latest updates</p>
				<form action="#" class="newsletter-form" autocomplete="off">
					<input type="email" name="email" id="email"
						placeholder="enter your email" required /> <input type="submit"
						value="subscribe" />
				</form>
			</div>
		</div>
		<div class="credit">
			&copy; 2022 <span>ahf</span> || all right reserved .
		</div>
	</footer>

	<script>
		function previewImage(input) {
			var preview = document.getElementById('previewImage');
			var file = input.files[0];
			var reader = new FileReader();

			reader.onloadend = function() {
				preview.src = reader.result;
			};

			if (file) {
				reader.readAsDataURL(file);
			} else {
				preview.src = 'images/person.jpeg'; // Default image if no image is selected
			}
		}
	</script>

</body>
</html>
