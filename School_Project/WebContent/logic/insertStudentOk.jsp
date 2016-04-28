<%@page import="kosta.model.Student"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.RegistManage"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	
	request.setCharacterEncoding("UTF-8");


	Member member = new Member();
	Student student = new Student();
	RegistManage rm=service.getSchoolAdminIdService(id);
	SchoolRegist sr=service.schoolRegistSchoolIdService(rm.getSchoolAdminId());
	
	String sid = sr.getSchoolId();
	try {
		
	
   String uploadPath  = request.getRealPath("upload");
 	int size = 20*1024*1024; //20mb
 	
 	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
	session.setAttribute("request12", multi);
 	member.setSchoolId(sr.getSchoolId());
	member.setMemberId(multi.getParameter("memberId"));
	member.setMemberAddress(multi.getParameter("memberAddress"));
	member.setMemberName(multi.getParameter("memberName"));
	member.setMemberBirthday(multi.getParameter("memberBirthday"));
	member.setMemberEmail(multi.getParameter("memberEmail"));
	member.setMemberNote(multi.getParameter("memberNote"));
	member.setMemberTel(multi.getParameter("memberTel"));
		
	int re = service.updateMemberService(member);
 	if(re>0){
 		response.sendRedirect("insertStudentOk2.jsp");
 	}

	} catch (Exception e) {
		e.printStackTrace();
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