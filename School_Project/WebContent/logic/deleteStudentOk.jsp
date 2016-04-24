<%@page import="kosta.model.StudentDetail"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String m_id = request.getParameter("m_id");

 	SchoolService service=SchoolService.getInstance();
	int re = service.deleteStudentService(m_id);
	int re2 = service.deleteStudentService2(m_id);
	if(re>0&&re2>0){
		response.sendRedirect("../teacherListStudentDetail.jsp?m_id="+m_id);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>