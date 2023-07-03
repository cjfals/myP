<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->
								<header id="header">
									<a href="/home" class="logo"><strong>cjfals7292</strong>myProject</a>
									<ul class="icons">
									<c:if test="${id == null }">
										<li><a href="/member/loginM"><span class="label">로그인</span></a></li>
									</c:if>
									<c:if test="${id != null }">
										${id }님
										<li><a href="/member/logoutM"><span class="label">로그아웃</span></a></li>
									</c:if>
									</ul>
								</header>

