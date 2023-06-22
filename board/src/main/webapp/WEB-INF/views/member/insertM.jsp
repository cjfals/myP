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

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

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

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="index.html">Homepage</a></li>
										<li><a href="generic.html">Generic</a></li>
										<li><a href="elements.html">Elements</a></li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Etiam Dolore</a></li>
										<li><a href="#">Adipiscing</a></li>
										<li>
											<span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul>
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="/resources/images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/resources/images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/resources/images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
										<li class="fa-phone">(000) 000-0000</li>
										<li class="fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/skel.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>