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
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
			if('${error}' == "error"){
				alert('아이디, 비밀번호 오류');
			}
			$(document).ready(function(){
				$('#login').submit(function(){
					if($('#m_id').val() == '' || $('m_pass').val() == ''){
						alert('아이디, 비밀번호를 입력하세요');
						return false;
					}
				});
			});
			
		
		
		</script>
		
		
		
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
									<form method="post" action="/member/loginM" id="login">
														<div class="row uniform">
															<div class="6u 12u$(xsmall)">
																<input type="text" name="m_id" id="m_id" placeholder="id">
															</div>
															<div class="6u$ 12u$(xsmall)">
																<input type="password" name="m_pass" id="m_pass" placeholder="password">
															</div>
															
															<!-- Break -->
															<div class="12u$">
																<ul class="actions">
																	<li><input type="submit" value="로그인" class="special"></li>
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