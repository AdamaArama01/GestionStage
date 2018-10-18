<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="/style1.css" />
<title>Home</title>
<style>
#menu {
	width: 100%;
	height: 75px;;
	background-color: #000fff;
}

#menu:hover {
	background: #773300;
}

#pres {
	position: relative;
	width: 100%;
	height: 75px;;
}

#pres ul {
	float: right;
	right: 10%;
	padding-top: 15px;
	margin-left: -400px;
	position: relative;
}

#pres ul li {
	margin-left: 20px;
	float: left;
	list-style-type: none;
	position: relative;
}

#pres ul li a {
	text-align: center;
	display: inline-block;
	background-color: #00A0A0;
	height: 40px;
	width: 140px;
	color: #FD0;
	padding-top: 10px;
	text-decoration: none;
	position: relative;
	margin-bottom: 50px;
}

#pres ul li a:hover {
	background: #773300;
}

#cent {
	height: 100%;
	width: 100%;
	background-color: #aaabbb;
}

#cen table {
	height: 10px;
	width: 100%;
	background-color: blue;
	text-align: center;
}

tr:first-child {
	font-weight: bold;
	background-color: #777777;
}
</style>

</head>
<body>
	<div id="menu">
		<h1>
			<center><img src="logo_ifi.png" width="100%" height="100"/></center>
		</h1>
	</div>
	<div id="pres">
		<ul>
			<li><a href="\GestionStage\SeConnecter">Connexion</a></li>
			<li><a href="/LoginServlet" class="button blue">Utilisateur</a></li>
			<li><a href="/create-offre" class="button blue">Offres</a></li>
			<li><a href="/create-visiteur" class="button blue">Visiteurs</a></li>
			<li><a href="#">Contact Us</a></li>
			<li><a href="#" id="log">Login</a></li>
			<li><a href="#" id="reg" data-toggle="modal"data-target="#myModal">Register</a></li>
		</ul>
	</div>

	<div class="form-control" id="frsDivTop">
		<hr id="top" />
		<div id="frstDiv">
			<h2>
				<span style="color: #dc143c" class=""></span> <span
					style="color: green; font-weight: bolder; font-family: Calligrapher, Arial;"></span>
				<span
					style="color: red; font-weight: bolder; font-family: Calligrapher, Arial;">Offres
					de stage </span><span style="color: #dc143c" class=""></span>
				<div
					style="background-color: rgba(0, 0, 0, 0.5); border-radius: 5px;">
					<marquee direction="right" behaviour="alternate">
						<span style="color: #ff1493;" class=""></span>
					</marquee>
				</div>
			</h2>
		</div>
		
		<hr id="mid" />
		<br />

		<div align="center">
			<br />
			<br />
			<div id="form" style="">
				<form action="LoginServlet" method="post" autocomplete="off">
					<h2 style="color: white; font-family: Calligrapher;">Login
						Here</h2>
					<input type="email" name="email" placeholder="Email"
						autofocus="autofocus" style="border-radius: 10px; padding: 5px">
					<input type="password" name="password"
						placeholder="Password" style="border-radius: 10px; padding: 5px">
					<input type="submit" value="Se Connecter"
						class="btn btn-primary">
				</form>
				<br />
				<br />
				<p align="center">
					<a href="#" style="color: white;">Forgot your Password?</a>
				</p>
			</div>
		</div>
		<br>
		<br>
		<hr id="dwn1" />
		<div align="center" style="font-family: Calligrapher;">
			<h3>
				<b><span style="color: green">©</span> <span style="color: pink">By</span>
					: <span style="color: red">IFI<span style="color: blue;">promo</span>-
				</span> <span style="color: red">22</span><span style="color: blue">-2017-</span><span
					style="color: red">2019</span></b>
			</h3>
		</div>
		<hr id="dwn2" />
		<br />
		<br />
	</div>
</body>
</html>