<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동되었습니다
	<hr>
	<%  //지금부터 자바문법을 쓸 거라는 뜻
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String bloodType=request.getParameter("bloodType");
		String []hobby=request.getParameterValues("hobby");
		int code=Integer.parseInt(request.getParameter("code"));
	%>
	<h1>코드</h1>
	<h1>아이디 : <%= id%></h1>	<!-- 자바에서의 변수?를 출력하라는 기호 -->
	<h1>암호 : <%= pwd%></h1>
	<h1>혈액형 : <%= bloodType %></h1>
	<h2>취미 : </h2>
		
</body>
</html>