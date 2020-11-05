<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	body{ padding-top:70px}
</style>
<!--상단메뉴 시작-->
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<div class="container-fluid">
		<!--화면 크기가 작을때 보여지는 네비게이션바(모바일용)  -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#collapse-menu">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href='<c:url value="/DataRoom/Index.kosmo"/>'><span
				class="glyphicon glyphicon-education"></span> KOSMO</a>
		</div>
		<!-- 화면 크기가 클때 상단에 보여지는 메뉴(데스크탑용) -->
		<div class="collapse navbar-collapse" id="collapse-menu">
			<!-- 네비게이션바에 폼 추가 -->
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="검색">
				</div>
				<button type="submit" class="btn btn-info">확인</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/DataRoom/Index.kosmo'/>">HOME</a></li>
				<li><a href="#">로그인</a></li>				
				<li><a href="<c:url value='/DataRoom/List.kosmo'/>">자료실</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
		</div>
	</div>
</nav>
<!--  상단 메뉴 끝 -->