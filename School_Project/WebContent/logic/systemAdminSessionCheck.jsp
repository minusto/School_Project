<%@page import="kosta.model.SystemAdmin"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
SchoolService service=SchoolService.getInstance();
String id=(String)session.getAttribute("id");
String grade=(String)session.getAttribute("grade");
if(id!=null&&grade.equals("시스템관리자")){
	SystemAdmin systemAdmin=service.systemAdminInfoDetailService(id);
	request.setAttribute("systemAdmin", systemAdmin);
}else{
	response.sendRedirect("main.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>