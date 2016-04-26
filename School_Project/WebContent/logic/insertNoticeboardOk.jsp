<%@page import="kosta.model.SchoolService"%>
<%@include file="schoolAdminSessionCheck.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	request.setCharacterEncoding("utf-8");
 		request.setAttribute("schoolAdminId", id);
		System.out.println(id);
    	int re = service.insertNoticeBoardService(request,id);
    	if(re>0){
        	response.sendRedirect("../schoolAdminNoticeBoardList.jsp");
        }else{
       	out.print("<script>history.go(-1);</script>");
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