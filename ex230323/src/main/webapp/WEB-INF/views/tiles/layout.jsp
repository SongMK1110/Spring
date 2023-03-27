<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/footers/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<header>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</header>
	<main>
		<tiles:insertAttribute name="main"></tiles:insertAttribute>
	</main>
	<div class="container">
		<footer
			class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
			<div class="col mb-3">
				<a href="/"
					class="d-flex align-items-center mb-3 link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" /></svg>
				</a>
				<p class="text-muted">&copy; 2022</p>
			</div>

			<div class="col mb-3"></div>

			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>
		</footer>
	</div>
</body>
</html>