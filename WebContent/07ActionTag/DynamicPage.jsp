<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>페이지를 선택해서 동적으로 페이지 포함하기</legend>
		<form>
			<select name="pageName">
				<option value="">페이지를 선택하세요</option>
				<option value="DirectivePage.jsp"></option>
				<option value="ActionTagePage.jsp"></option>
			</select>
			<input type="submit" value="페이지 선택"/>
		</form>
		<%
			String pageName = request.getParameter("pageName");
			if(pageName!=null&&pageName.length()!=0){
		%>
		<jsp:include page="<%=pageName %>"></jsp:include>
		<% } %>
	</fieldset>
	<fieldset>
		<legend>계절에 따른 페이지 변환</legend>
		<%
			String season="";
			Date currDate = new Date();
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat dateFormat = new SimpleDateFormat("MM");
			int today = Integer.parseInt(dateFormat.format(currDate));
			out.println(today);
			
			switch(today){
				case 3:
				case 4:
				case 5:
					season = "Spring.jsp";
					break;
				case 6: 
				case 7:
				case 8: 
					season = "Summer.jsp";
					break;
				case 9:
				case 10: 
				case 11: 
					season = "Autumn.jsp";
					break;
				default:
					season = "Winter.jsp";
			}
		%>
		<jsp:include page="<%=season %>"></jsp:include>
	</fieldset>
</body>
</html>