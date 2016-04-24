<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	request.setCharacterEncoding("utf-8");
 
    	SchoolService service = SchoolService.getInstance();
    	int re = service.insertNoticeBoardService(request);
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