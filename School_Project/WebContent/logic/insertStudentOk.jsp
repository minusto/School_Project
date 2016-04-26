<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.RegistManage"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="kosta.model.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<jsp:useBean id="student" class="kosta.model.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%
	RegistManage rm=service.getSchoolAdminIdService(id);
	SchoolRegist sr=service.schoolRegistSchoolIdService(rm.getSchoolAdminId());
	member.setSchoolId(sr.getSchoolId());
	int re = service.updateMemberService(member);
	int re2 = service.updateStudentService(student);
	if(re>0 && re2>0){
		response.sendRedirect("../teacherInsertStudentForm.jsp");
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