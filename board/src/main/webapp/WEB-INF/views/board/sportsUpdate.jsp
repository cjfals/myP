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
			$(document).ready(function(){
				if(${detail.category == '축구'}){
					$('#category').val('축구').attr('selected');
				}
				if(${detail.category == '야구'}){
					$('#category').val('야구').attr('selected');
				}
				if(${detail.category == '농구'}){
					$('#category').val('농구').attr('selected');
				}
				
				if(${detail.grade == '입문'}){
					$('#low').prop('checked', true);
				}
				if(${detail.grade == '보통'}){
					$('#normal').prop('checked', true);
				}
				if(${detail.grade == '잘함'}){
					$('#high').prop('checked', true);
				}
				
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
									<form method="post" action="/board/sportsUpdate">
										<input type="hidden" name="s_num" value="${detail.s_num }">
														<div class="row uniform">
															<div class="6u 12u$(xsmall)">
																<input type="text" name="title" id="title" value="${detail.title }">
															</div>
															<div class="col-12u$(xsmall)">
																<select name="category" id="category">
																	<option value="">- 종목을 선택하세요 -</option>
																	<option value="축구" id="soccer">축구</option>
																	<option value="야구" id="baseball">야구</option>
																	<option value="농구" id="basketball">농구</option>
																</select>
															</div>
															
															<!-- Break -->
															<div class="4u 12u$(small)">
																<input type="radio" value="입문" id="low" name="grade">
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
																<textarea name="content" id="content" rows="6">${detail.content }</textarea>
															</div>
															
															<!-- Break -->
															<div class="12u$">
																<ul class="actions" style="float:right;">
																	<li><input type="submit" value="수정" class="special"></li>
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