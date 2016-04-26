<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.SchoolService"%>
<%@include file="schoolAdminSessionCheck.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="registManage" class="kosta.model.RegistManage"></jsp:useBean>
<jsp:setProperty property="*" name="registManage" />

<jsp:useBean id="member" class="kosta.model.Member"></jsp:useBean>
<jsp:setProperty property="memberId" name="member" />
<%--     <jsp:setProperty property="schoolId" name="member"/> --%>

<jsp:useBean id="student" class="kosta.model.Student"></jsp:useBean>
<jsp:setProperty property="memberId" name="student" />
<%
	String grade1 = request.getParameter("memberGrade");
	String memberId = request.getParameter("memberId");

	SchoolRegist sr = service.schoolRegistSchoolIdService(id);
	member.setSchoolId(sr.getSchoolId());

	int re1 = service.insertMemberIdService(member);
	int re2 = service.insertRegistManageService(registManage);

	if (grade1.equals("학생")) {
		int re3 = service.insertStudentIdService(student);
	}

	if (grade1.equals("학부모")) {
		int re4 = service.insertParentIdService(memberId);
	}

	if (re1 > 0 && re2 > 0) {
		response.sendRedirect("../schoolAdminInsertUserIdForm.jsp");
	} else {
		out.print("<script>alert('아이디 중복확인'); history.go(-1)</script>");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>