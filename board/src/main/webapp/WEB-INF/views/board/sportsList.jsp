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
				$('#write').click(function(){
					if(${id == null}){
						if(confirm('로그인이 필요합니다 로그인 페이지로 이동하시겠습니까?')){
							location.href='/member/loginM';
							return false;
						}else{
							return false;
						}
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
									<div class="content">
										<header>
											<h1>Hi, I’m Editorial<br />
											by HTML5 UP</h1>
											<p>A free and fully responsive site template</p>
										</header>
										<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin aliquam facilisis ante interdum congue. Integer mollis, nisl amet convallis, porttitor magna ullamcorper, amet egestas mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor sit nullam.</p>
										<ul class="actions">
											<li><a href="/board/sportsWrite" class="button big" id="write">글 쓰기</a></li>
										</ul>
									</div>
									<span class="image object">
										<img src="/resources/images/pic10.jpg" alt="" />
									</span>
								</section>

							<!-- Section -->
								<section>
									<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<th>구분</th>
																	<th>제목</th>
																	<th>작성자</th>
																	<th>작성일</th>
																	<th>조회수</th>
																</tr>
															</thead>
															<tbody>
															
															<c:forEach items="${list }" var="list">
																<tr>
																	<td>${list.division }</td>
																	<td>${list.title }</td>
																	<td>${list.writer }</td>
																	<td>${list.date }</td>
																	<td>${list.count }</td>
																</tr>
															</c:forEach>
																
															</tbody>
															
														</table>
													</div>
								</section>


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