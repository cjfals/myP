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
																<input type="text" name="title" id="title" value="${detail.title }" readonly>
															</div>
															<div class="6u 12u$(xsmall)">
																<input type="text" name="writer" id="writer" value="${detail.writer }" readonly>
															</div>
															
															<!-- Break -->
															<div class="4u 12u$(small)">
																종목 : ${detail.category }
															</div>
															
															<div class="4u 12u$(small)">
																등급 : ${detail.grade }
															</div>
															
															<div class="4u 12u$(small)">
																유형 : ${detail.division }
															</div>
															
															<!-- Break -->
															<div class="12u$">
																<textarea name="content" id="content"rows="6" readonly>${detail.content }</textarea>
															</div>
															
															<div class="4u 12u$(small)" style="float:right;">
																작성일 : ${detail.date }
															</div>
															
															<div class="4u 12u$(small)" style="float:right;">
																조회수 : ${detail.count }
															</div>
															
															<!-- Break -->
															<div class="12u$">
																<ul class="actions" style="float:right">
																	<c:if test="${id eq detail.writer }">
																		<li><input type="button" value="수정" onclick="location.href='/board/sportsUpdate?s_num=${detail.s_num}'"></li>
																		<li><input type="button" value="삭제" onclick="location.href='/board/sportsList'"></li>
																	</c:if>
																	<li><input type="button" value="목록" onclick="location.href='/board/sportsList'"></li>
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