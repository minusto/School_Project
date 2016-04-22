<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="SchoolAdmin" class="kosta.model.SchoolAdmin"></jsp:useBean>
<jsp:setProperty property="*" name="SchoolAdmin"/>
<jsp:useBean id="SchoolAdminRegist" class="kosta.model.SchoolAdminRegist"></jsp:useBean>
<jsp:setProperty property="*" name="SchoolAdminRegist"/>
<%
	SchoolAdminRegist.setSystemAdminId("system");
 	SchoolService service=SchoolService.getInstance();
	int re=service.insertSchoolAdminService(SchoolAdmin);
	int re2=service.insertSchoolAdminRegistService(SchoolAdminRegist);
	response.sendRedirect("../schoolAdminList.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>