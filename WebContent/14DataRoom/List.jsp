<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>List.jsp</title>

<!-- 부트스트랩 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- 네비게이션바 시작 -->
	<jsp:include page="/Template/DataRoomTop.jsp" />
	<!-- 네비게이션바 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<!-- 점보트론(Jumbotron) -->
		<div class="jumbotron">
			<h1>
				자료실<small>목록 페이지${message }</small>
			</h1>
		</div>
		<!-- 작성하기 버튼 -->
		<div class="row">
			<div class="col-md-12 text-right">
				<a href="<c:url value="/DataRoom/Write.kosmo"/>"
					class="btn btn-success">등록</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table
					class="table table-bordered table-hover table-condensed text-center">
					<!-- 테이블 컬럼폭은 col-*-*계열로 설정 -->
					<tr>
						<th class="col-md-1 text-center">번호</th>
						<th class="text-center">제목</th>
						<th class="col-md-1 text-center">작성자</th>
						<th class="col-md-2 text-center">첨부파일</th>
						<th class="col-md-1 text-center">다운로드</th>
						<th class="col-md-2 text-center">등록일</th>
					</tr>
						<c:if test="${empty list}" var="isEmpty">
						<tr>
							<td colspan="6">등록된 게시물이 없어요</td>
						</tr>
						</c:if>
						<c:if test="${not isEmpty}">
							<c:forEach var="dto" items="${list }">
							<tr>
								<td>${dto.no }</td>
								<td class="text-left"><a href="">${dto.title }</a></td>
								<td>${dto.name }</td>
								<td class="attachfile"><a href="">${dto.attachFile }</a></td>
								<td>${dto.downCount }</td>
								<td>${dto.postDate }</td>
							</tr>
							</c:forEach>
						</c:if>
				</table>
			</div><!-- column -->			
		</div><!-- row -->	
		<!-- 페이징 -->
		<div class="row">
			<div class="col-md-12 text-center">
				
			</div>
		</div>			
	</div><!-- container -->
	

	<!-- 실제 내용 끝 -->
	<!-- 푸터 시작 -->
	<jsp:include page="/Template/DataRoomFooter.jsp" />
	<!-- 푸터 끝 -->
	<script>
		$('.attachfile a').click(function(){
			var className = $(this).attr('class');
			console.log(className.substring(8,className.length));
			var numbering = className.substring(8,className.length);
			var downcount = $('#downcount'+numbering).html();
			$('#downcount'+numbering).html(parseInt(downcount)+1);
			
		});
	
	</script>

</body>
</html>