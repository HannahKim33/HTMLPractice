<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("username");
		String gender=request.getParameter("gender");
		String []snack=request.getParameterValues("snack");
		String job=request.getParameter("job");
	%>
	이름 : <%= name %><br>
	성별 : <%= gender %><br>
	좋아하는 간식 :
	<%
		if(snack!=null){
			for(String s:snack){
				%>
					<%=s %>
				<%
			}
		}
	%>
	직업 : <%= job %>
	<hr>
</body>
</html>