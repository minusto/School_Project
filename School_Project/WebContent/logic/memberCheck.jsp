<%@page import="kosta.model.MemberCheck"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	SchoolService service=SchoolService.getInstance();
	MemberCheck mc=service.memberCheckService(id);
	if(mc!=null){
		if(pass.equals(mc.getMemberPassword())){
			if(pass.equals("1234")){
				response.sendRedirect("../passwordModForm.jsp?id="+id);
			}else if(mc.getMemberGrade().equals("교사")){
				response.sendRedirect("../teacherMain.jsp");
			}else if(mc.getMemberGrade().equals("학생")){
				response.sendRedirect("../studentMain.jsp");
			}else if(mc.getMemberGrade().equals("학부모")){
				response.sendRedirect("../studentMain.jsp");
			}else if(mc.getMemberGrade().equals("학교관리자")){
				response.sendRedirect("../schoolAdminMain.jsp");
			}else if(mc.getMemberGrade().equals("시스템관리자")){
				response.sendRedirect("../systemAdminMain.jsp");
			}
		}else{
			response.sendRedirect("../main.jsp?login=fail");
		}
	}else{
			response.sendRedirect("../main.jsp?login=fail");
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