<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<%@ include file="../include/header.jsp" %>
							<!-- Banner -->
								<section id="banner">
									<form method="post" action="#">
														<div class="row uniform">
															<div class="6u 12u$(xsmall)">
																<input type="text" name="demo-name" id="demo-name" value="" placeholder="Name">
															</div>
															<div class="6u$ 12u$(xsmall)">
																<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email">
															</div>
															
															<!-- Break -->
															<div class="4u 12u$(small)">
																<input type="radio" id="demo-priority-low" name="demo-priority" checked="">
																<label for="demo-priority-low">Low</label>
															</div>
															<div class="4u 12u$(small)">
																<input type="radio" id="demo-priority-normal" name="demo-priority">
																<label for="demo-priority-normal">Normal</label>
															</div>
															<div class="4u$ 12u$(small)">
																<input type="radio" id="demo-priority-high" name="demo-priority">
																<label for="demo-priority-high">High</label>
															</div>
															
															
															<!-- Break -->
															<div class="12u$">
																<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
															</div>
															<div class="6u$ 12u$(small)">
																<input type="checkbox" id="demo-human" name="demo-human">
																<label for="demo-human">I am a human</label>
															</div>
															<!-- Break -->
															<div class="12u$">
																<ul class="actions">
																	<li><input type="submit" value="Send Message" class="special"></li>
																	<li><input type="reset" value="Reset"></li>
																</ul>
															</div>
														</div>
													</form>
								</section>

							<!-- Section -->
								<section>
									
								</section>

							<!-- Section -->
								

						</div>
					</div>

				<%@include file="../include/sidebar.jsp" %>

			</div>

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/skel.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>