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
				
				$('#category').change(function(){
					location.href = '/board/sportsList?category='+this.value;
				});
				
				$('#division').change(function(){
					location.href = '/board/sportsList?division='+this.value;
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
											<h1>스포츠 게시판</h1>
											<p>팀, 팀원, 상대팀 매칭</p>
										</header>
										<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin aliquam facilisis ante interdum congue. Integer mollis, nisl amet convallis, porttitor magna ullamcorper, amet egestas mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor sit nullam.</p>
										<ul class="actions">
											<li><a href="/board/sportsWrite" class="button big" id="write">글 쓰기</a></li>
										</ul>
									</div>
									<span class="image object">
										<img src="/resources/images/124346988.png" alt="" />
									</span>
								</section>

							<!-- Section -->
								<section>
										<select name="category" id="category" class="button" style="width:200px">
											<option value="">- 종목 -</option>
											<option value="축구" >축구</option>
											<option value="야구">야구</option>
											<option value="농구">농구</option>
										</select>
										<select name="division" id="division" class="button" style="width:200px">
											<option value="">- 분류 -</option>
											<option value="팀 찾음">팀 찾음</option>
											<option value="팀원 찾음">팀원 찾음</option>
											<option value="경기상대 찾음">경기상대 찾음</option>
										</select>
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
																	<td>[${list.category }]${list.division }</td>
																	<td><a href="/board/sportsDetail?s_num=${list.s_num }">${list.title }</a></td>
																	<td>${list.writer }</td>
																	<td>${list.date }</td>
																	<td>${list.count }</td>
																</tr>
															</c:forEach>
																
															</tbody>
															
														</table>
									<ul class="pagination" style="text-align: center;">
										<c:if test="${pageDTO.prev == true }">
											<li><a href="/board/sportsList?page=${pageDTO.cri.page - 1}" class="button">Prev</a></li>
										</c:if>
										<c:if test="${pageDTO.prev == false }">
											<li><a href="/board/sportsList?page=${pageDTO.cri.page - 1}" class="button disabled ">Prev</a></li>
										</c:if>
										<c:forEach begin="${pageDTO.startPage }" end="${pageDTO.endPage }" var="i">
										
											<c:if test="${pageDTO.cri.page == i}">
												<li><a href="/board/sportsList?page=${i }" class="page active">${i }</a></li>
											</c:if>
											<c:if test="${pageDTO.cri.page != i}">
												<li class="page"><a href="/board/sportsList?page=${i }">${i }</a></li>
											</c:if>
											
										</c:forEach>
			
										<c:if test="${pageDTO.next == true }">
											<li><a href="/board/sportsList?page=${pageDTO.cri.page + 1 }" class="button">Next</a></li>
										</c:if>
										<c:if test="${pageDTO.next == false }">
											<li><a href="/board/sportsList?page=${pageDTO.cri.page + 1 }" class="button disabled">Next</a></li>
										</c:if>
									</ul>
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