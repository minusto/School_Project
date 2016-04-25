<%@page import="kosta.model.Parent"%>
<%@page import="kosta.model.Member"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
SchoolService service=SchoolService.getInstance();
String id=(String)session.getAttribute("id");
String grade=(String)session.getAttribute("grade");
if(id!=null&&grade.equals("학생")){
	Member member=service.memberDetailService(id);
	request.setAttribute("member", member);
}else if(id!=null&&grade.equals("학부모")){
	Parent parent=service.parentInfoDetailService(id);
	request.setAttribute("parent", parent);
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