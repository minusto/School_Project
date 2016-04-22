<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="Parent" class="kosta.model.Parent"></jsp:useBean>
<jsp:setProperty property="*" name="Parent"/>
<%
	SchoolService service = SchoolService.getInstance();
	int re = service.insertParentService(Parent);
	response.sendRedirect("../teacherListParent.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

</body>
</html>​