<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
	body {
		font: 400 15px/1.8 Lato, sans-serif;
		color: #777;
	}
	h3, h4 {
		margin: 10px 0 30px 0;
		letter-spacing: 10px;
		font-size: 20px;
		color: #111;
	}
	.container {
		padding: 80px 120px;
	}
	.person {
		border: 10px solid transparent;
		margin-bottom: 25px;
		width: 80%;
		height: 80%;
		opacity: 0.7;
	}
	.person:hover {
		border-color: #f1f1f1;
	}
	.carousel-inner img {
		-webkit-filter: grayscale(90%);
		filter: grayscale(90%); /* make all photos black and white */
		width: 100%; /* Set width to 100% */
		margin: auto;
	}
	.carousel-caption h3 {
		color: #fff !important;
	}
	@media ( max-width : 600px) {
		.carousel-caption {
			display: none;
			/* Hide the carousel text when the screen is less than 600 pixels wide */
		}
	}
	.bg-1 {
		background: #2d2d30;
		color: #bdbdbd;
	}
	.bg-1 h3 {
		color: #fff;
	}
	.bg-1 p {
		font-style: italic;
	}
	.list-group-item:first-child {
		border-top-right-radius: 0;
		border-top-left-radius: 0;
	}
	.list-group-item:last-child {
		border-bottom-right-radius: 0;
		border-bottom-left-radius: 0;
	}
	.thumbnail {
		padding: 0 0 15px 0;
		border: none;
		border-radius: 0;
	}
	.thumbnail p {
		margin-top: 15px;
		color: #555;
	}
	.btn {
		padding: 10px 20px;
		background-color: #333;
		color: #f1f1f1;
		border-radius: 0;
		transition: .2s;
	}
	.btn:hover, .btn:focus {
		border: 1px solid #333;
		background-color: #fff;
		color: #000;
	}
	.modal-header, h4, .close {
		background-color: #333;
		color: #fff !important;
		text-align: center;
		font-size: 30px;
	}
	.modal-header, .modal-body {
		padding: 40px 50px;
	}
	.nav-tabs li a {
		color: #777;
	}
	#googleMap {
		width: 100%;
		height: 400px;
		-webkit-filter: grayscale(100%);
		filter: grayscale(100%);
	}
	.navbar {
		font-family: Montserrat, sans-serif;
		margin-bottom: 0;
		background-color: #2d2d30;
		border: 0;
		font-size: 11px !important;
		letter-spacing: 4px;
		opacity: 0.9;
	}
	.navbar li a, .navbar .navbar-brand {
		color: #d5d5d5 !important;
	}
	.navbar-nav li a:hover {
		color: #fff !important;
	}
	.navbar-nav li.active a {
		color: #fff !important;
		background-color: #29292c !important;
	}
	.navbar-default .navbar-toggle {
		border-color: transparent;
	}
	.open .dropdown-toggle {
		color: #fff;
		background-color: #555 !important;
	}
	.dropdown-menu li a {
		color: #000 !important;
	}
	.dropdown-menu li a:hover {
		background-color: red !important;
	}
	footer {
		background-color: #2d2d30;
		color: #f5f5f5;
		padding: 32px;
	}
	footer a {
		color: #f5f5f5;
	}
	footer a:hover {
		color: #777;
		text-decoration: none;
	}
	.form-control {
		border-radius: 0;
	}
	textarea {
		resize: none;
	}
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index">
				<li><img src="resources/images/NIITAlumni.png"
					class="img-circle" height="50" width="70" alt="Avatar"></li>
			</a>
		</div>

		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-left">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<c:if
						test="${pageContext.request.userPrincipal.name != 'meghkul'}">
						<li><a href="MyProfile">PROFILE</a></li>
						<li><a href="JoinUs">JOIN US</a></li>
						<li><a href="GetInfo">GET INFO</a></li>
						<li><a href="Engage">ENGAGE</a></li>
						<li><a href="Benefits">BENEFITS</a></li>
						<li><a href="Chat">CHAT</a></li>
						<li><a href="Forum">FORUM</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">BLOG <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="BlogAdd">ADD NEW BLOG</a></li>
								<li><a href="BlogView">VIEW ALL BLOG</a></li>

							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">BULLETINE <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="BulletineView">VIEW ALL BULLETINE</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">JOB OPPORTUNITY <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="JobView">VIEW ALL JOB OPPORTUNITY</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">WHAT'S NEW <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="WhatNewView">VIEW ALL WHAT'S NEW</a></li>
							</ul></li>
					</c:if>
					<c:if
						test="${pageContext.request.userPrincipal.name == 'meghkul'}">
						<!-- <li><img src="resources/images/NIITAlumni.png"
							class="img-circle" height="50" width="70" alt="Avatar"></li> -->
						<li><a href="MyProfile">PROFILE</a></li>
						<li><a href="JoinUs">JOIN US</a></li>
						<li><a href="GetInfo">GET INFO</a></li>
						<li><a href="Engage">ENGAGE</a></li>
						<li><a href="Benefits">BENEFITS</a></li>
						<li><a href="Chat">CHAT</a></li>
						<li><a href="Forum">FORUM</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">BLOG <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="BlogAdd">ADD NEW BLOG</a></li>
								<li><a href="BlogView">VIEW ALL BLOG</a></li>
								<li><a href="admin/blogViewApprove">APPROVE BLOG</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">BULLETINE <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="BulletineAdd">ADD NEW BULLETINE</a></li>
								<li><a href="BulletineView">VIEW ALL BULLETINE</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">JOB OPPORTUNITIES <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="JobAdd">ADD NEW JOB OPPORTUNITIES </a></li>
								<li><a href="JobView">VIEW ALL JOB OPPORTUNITIES </a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">WHAT'S NEW <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="WhatNewAdd">ADD NEW WHAT'S NEW</a></li>
								<li><a href="WhatNewView">VIEW ALL WHAT'S NEW</a></li>
							</ul></li>
					</c:if>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<!-- <li><img src="resources/images/NIITAlumni.png"
							class="img-circle" height="50" width="70" alt="Avatar"></li> -->
					<li><a href="MyProfile">PROFILE</a></li>
					<li><a href="JoinUs">JOIN US</a></li>
					<li><a href="GetInfo">GET INFO</a></li>
					<li><a href="Engage">ENGAGE</a></li>
					<li><a href="Benefits">BENEFITS</a></li>
				</c:if>
			</ul>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="username">${pageContext.request.userPrincipal.name}</span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<!-- <div class="log-arrow-up"></div> -->
							<li><img src="resources/images/NIITAlumni.png"
								class="img-circle" height="50" width="70" alt="Avatar"></li>
							<li class="eborder-top"><a href="Home">My Profile</a></li>
							<li class="divider"></li>
							<li class="divider"></li>
							<li><a href="<c:url value='/Logout'/>"><i
									class="icon_key_alt"></i> Logout</a></li>
						</ul></li>
				</ul>
			</c:if>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name  == null}">
					<li><a href="Login">LOGIN</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>