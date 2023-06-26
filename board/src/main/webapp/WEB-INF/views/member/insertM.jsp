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
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
			function idCheck() {
					$.ajax({
						url:"/member/idCheck",
						data:{
							m_id: $('#m_id').val()
						},
						success:function(data){
							if($('#m_id').val().length > 0){
								if(data > 0){
									$('#idOk').css("display", "none");
									$('#idNo').css("display", "inline-block");
									
								}else{
									$('#idNo').css("display", "none");
									$('#idOk').css("display", "inline-block");
								}
							}else{
								$('#idOk').css("display", "none");
								$('#idNo').css("display", "none");
							}
							
						}
						
					});
			}
			
			function pwCheck() {
				var pw1 = $('#m_pass').val();
				var pw2 = $('#m_passConfirm').val();
				
				if(pw1 == pw2){
					$('#pwOk').css("display", "inline-block");
					$('#pwNo').css("display", "none");
				}else{
					$('#pwOk').css("display", "none");
					$('#pwNo').css("display", "inline-block");
				}
			}
			
			$(document).ready(function(){
				$('#demo-human').click(function(){
					alert('dd');
				});
				
				
				$('#insertSubmit').submit(function(){
					if($('#idNo').css('display') == 'inline-block' || $('#pwNo').css('display') == 'inline-block'){
						alert('아이디 또는 비밀번호 확인');
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
									<form method="post" action="/member/insertM" id='insertSubmit'>
														<div class="row uniform">
															<div class="6u 12u$(xsmall)">
																<input type="text" name="m_id" id="m_id" placeholder="id" required oninput="idCheck();">
															</div>
															<div class="6u 12u$(xsmall)">
																<input type="text" name="idOk" id="idOk" value="사용가능" Style="display: none;" readonly="readonly">
																<input type="text" name="idNo" id="idNo" value="중복된 아이디" Style="display: none;" readonly="readonly">
															</div>
															
															<div class="6u 12u$(xsmall)">
																<input type="text" name="m_name" id="m_name" required placeholder="name">
															</div>
															
															<div class="6u$ 12u$(xsmall)">
																<input type="password" id="m_pass" required placeholder="password">
															</div>
															<div class="6u$ 12u$(xsmall)">
																<input type="password" name="m_pass" id="m_passConfirm" required placeholder="password confirm" oninput="pwCheck();">
															</div>
															<div class="6u 12u$(xsmall)">
																<input type="text" name="pwOk" id="pwOk" value="비밀번호 일치" Style="display: none;" readonly="readonly">
																<input type="text" name="pwNo" id="pwNo" value="비밀번호가 다릅니다" Style="display: none;" readonly="readonly">
															</div>
															
															<div class="6u$ 12u$(small)">
																<input type="checkbox" id="demo-human" name="demo-human">
																<label for="demo-human">I am a human</label>
															</div>
															<!-- Break -->
															<div class="12u$">
																<ul class="actions">
																	<li><input type="submit" value="회원가입" class="special"></li>
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