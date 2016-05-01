<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="createTable" class="kosta.model.CreateTable"></jsp:useBean>
<jsp:setProperty property="*" name="createTable"/>
<%
	SchoolService service = SchoolService.getInstance();
	int re = service.createTableService(createTable);
	if(re>0){
		response.sendRedirect("../teacherInsertScoreForm.jsp");
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>​