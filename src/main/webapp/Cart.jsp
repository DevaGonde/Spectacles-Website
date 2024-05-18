<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- --﷽-- -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>cart</title>

<!-- ---linked glasses favicon--- -->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<!-- ---linked font awesome cdn--- -->
<link rel="stylesheet" href="index.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

/* Updated CSS */
.input-container {
	display: flex;
	flex-direction: column;
	gap: 10px;
	margin: 0 100px; /* Add left and right margins */
}

.input-container input[type="text"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	transition: border-color 0.3s ease;
}

.input-container input[type="text"]:hover {
	border-color: #999;
}

.input-container input[type="text"]:focus {
	border-color: #555;
}

.cart-checkout {
	margin-top: 50px; /* Add margin to the top */
}

.checkout-total {
	margin-top: 20px; /* Add margin to separate from the heading */
}

.input-container {
	margin: 0 100px; /* Add left and right margins */
}

.input-container label {
	font-weight: bold;
}

.input-container input[type="text"], .input-container textarea {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	transition: border-color 0.3s ease;
}

.input-container input[type="text"]:hover, .input-container textarea:hover
	{
	border-color: #999;
}

.input-container input[type="text"]:focus, .input-container textarea:focus
	{
	border-color: #555;
}

/* Animation effect */
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.input-container input[type="text"] {
	animation: fadeIn 0.5s ease;
}
</style>
<!-- ---linked style.css file--- -->
<link rel="stylesheet" href="style.css" />

<!-- ---linked media.css file--- -->
<link rel="stylesheet" href="media.css" />
</head>
<body>
	<header class="header">
		<!-- ---header logo--- -->
		<a href="#" class="header-logo"> <img src="images/logo.png"
			alt="Logo" />
		</a>

		<!-- ---navigation--- -->
		<nav class="navigation">
			<%
			String name = null, pass = null;
			name = request.getParameter("name");
			pass = request.getParameter("pass");
			%>
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
	<!-- =====markup main element===== -->
	<main class="main-cart">
		<!-- ====markup cart title section==== -->
		<section class="cart-title">
			<h2>shopping cart</h2>
			<div class="page-direction">
				<a href="index.jsp">home</a> >> cart
			</div>
		</section>

		<!-- ====markup cart content section==== -->
		<section class="cart-content">
			<h2>your products</h2>

			<!-- ---card container--- -->
			<div class="cc-container">
				<!-- ---card no 01--- -->
				<div class="ccc-card">
					<figure class="cccc-img">
						<img src="images/<%=request.getParameter("img")%>"
							alt="found no image" />
					</figure>
					<div class="cccc-body">
						<h4><%=request.getParameter("type")%></h4>
						<label for="quantity">quantity : 1 </label>

						<p>
							$<%=request.getParameter("price")%>
							<span>$<%=request.getParameter("sprice")%></span>
						</p>
					</div>
					<div class="fas fa-xmark cross"></div>
				</div>
		</section>

		<!-- ====markup cart checkout section==== -->
		<!-- Updated HTML -->
		<section class="cart-checkout">
    <h2>checkout cart</h2>
    <div class="checkout-total">
        <h5>
            total : <span>$<%=request.getParameter("price")%>.00</span>
        </h5>
        <!-- Input fields for name and address -->
        <div class="input-container">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="input-container">
            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="4" required></textarea>
            <!-- Set the rows attribute to the desired number of lines -->
        </div>
        <!-- Button for checkout -->
        <input type="button" value="Proceed to Checkout" onclick="proceedToCheckout()">
    </div>
</section>


	</main>

	<!-- =====markup footer element===== -->
	<footer class="footer">
		<div class="footer-content">
			<!-- ---quick links--- -->
			<div class="quick-links">
				<h3>quick links</h3>
				<a href=".index.jsp"> <i class="fas fa-angle-right"></i> <span>home</span>
				</a> <a href="Products.jsp"> <i class="fas fa-angle-right"></i> <span>products</span>
				</a> <a href="About.jsp"> <i class="fas fa-angle-right"></i> <span>about</span>
				</a> <a href="Blogs.jsp"> <i class="fas fa-angle-right"></i> <span>blogs</span>
				</a> <a href="Contact.jsp"> <i class="fas fa-angle-right"></i> <span>contact</span>
				</a> <a href="Login.jsp"> <i class="fas fa-angle-right"></i> <span>login</span>
				</a> <a href="Register.jsp"> <i class="fas fa-angle-right"></i> <span>register</span>
				</a>
			</div>

			<!-- ---extra links--- -->
			<div class="extra-links">
				<h3>extra links</h3>
				<a href="#"> <i class="fas fa-angle-right"></i> <span>my
						account</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>my
						order</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>my
						wishlist</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>terms
						of use</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>privacy
						policy</span>
				</a>
			</div>

			<!-- ---follow us--- -->
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

			<!-- ---newsletter--- -->
			<div class="newsletter">
				<h3>newsletter</h3>
				<p>subsribe for latest updates</p>

				<!-- ---subscribe form--- -->
				<form action="#" class="newsletter-form" autocomplete="off">
					<input type="email" name="email" id="email"
						placeholder="enter your email" required /> <input
						type="submit" value="subscribe" />
				</form>
			</div>
		</div>

		<!-- ---creater credit--- -->
		<div class="credit">
			&copy 2022 <span>ahf</span> || all right reserved .
		</div>
	</footer>

	<!-- ---linked main.js file--- -->
	<script src="js/main.js"></script>
	<script>
	  function proceedToCheckout() {
	        var name = document.getElementById("name").value;
	        var address = document.getElementById("address").value;
	        if (name.trim() === "" || address.trim() === "") {
	            alert("Please fill in all the required fields (Name and Address) before proceeding to checkout.");
	        } else {
	            alert("Your order will be delivered soon to " + name + " at address: " + address);
	            window.location.href = "index.jsp?name=<%=name%>&pass=<%=pass%>";
	        }
	    }
	</script>

</body>
</html>

<!-- happy coding !!!! -->
<!-- this project made by Fahad at 10th May, 2022. -->
