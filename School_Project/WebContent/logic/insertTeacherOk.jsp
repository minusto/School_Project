<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="member" class="kosta.model.Member"></jsp:useBean>
    <jsp:setProperty property="*" name="member"/>
    <jsp:useBean id="teacher" class="kosta.model.Teacher"></jsp:useBean>
    <jsp:setProperty property="*" name="teacher"/>
    <%
    request.setCharacterEncoding("utf-8");
    %>
    <%
    SchoolService service = SchoolService.getInstance();
    int re = service.insertMember(member);
    int re2 = service.insertTeacher(teacher);
    
    if(re >0 && re2 > 0 ){
    	response.sendRedirect("/schoolAdminInsertTeacherForm.jsp");
    }else{
    	System.out.print("입력실패");
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