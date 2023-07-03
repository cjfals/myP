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
									<form method="post" action="/board/sportsWrite">
														<div class="row uniform">
															<div class="6u 12u$(xsmall)">
																<input type="text" name="title" id="title" value="" placeholder="제목">
															</div>
															<div class="col-12u$(xsmall)">
																<select name="category" id="category">
																	<option value="">- 종목을 선택하세요 -</option>
																	<option value="축구">축구</option>
																	<option value="야구">야구</option>
																	<option value="농구">농구</option>
																</select>
															</div>
															
															<!-- Break -->
															<div class="4u 12u$(small)">
																<input type="radio" value="입문" id="low" name="grade" checked>
																<label for="low">입문</label>
															</div>
															<div class="4u 12u$(small)">
																<input type="radio" value="보통" id="normal" name="grade">
																<label for="normal">보통</label>
															</div>
															<div class="4u$ 12u$(small)">
																<input type="radio" value="잘함" id="high" name="grade">
																<label for="high">잘함</label>
															</div>
															
															<!-- Break -->
															<div class="12u$">
																<textarea name="content" id="content" placeholder="Enter your message" rows="6"></textarea>
															</div>
															
															<div class="4u 12u$(small)">
																<input type="radio" value="팀 찾음" id="team" name="division" checked>
																<label for="team">팀 찾음</label>
															</div>
															<div class="4u 12u$(small)">
																<input type="radio" value="팀원 찾음" id="member" name="division">
																<label for="member">팀원 찾음</label>
															</div>
															<div class="4u$ 12u$(small)">
																<input type="radio" value="경기 상대 찾음" id="opponent" name="division">
																<label for="opponent">경기 상대 찾음</label>
															</div>
															<!-- Break -->
															<div class="12u$">
																<ul class="actions">
																	<li><input type="submit" value="작성" class="special"></li>
																	<li><input type="reset" value="초기화"></li>
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