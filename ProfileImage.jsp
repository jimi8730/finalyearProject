<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="com.DAO.UserDAO" %>
    <%@page import="java.io.InputStream" %>
    <%@page import="java.sql.Blob" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
			String User=(String)session.getAttribute("User");
	System.out.println("narendra"+User);
         			//int id=Integer.parseInt(request.getParameter("Image"));
						UserDAO dao=new UserDAO();
               			
         					ResultSet rs=dao.searchImage(User);
         					InputStream sImage;
         					Blob image = null;
         					byte[ ] imgData = null ;
				while(rs.next())
				{ 
               		 byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/jpg");
while((size=sImage.read(bytearray))!= -1 ){
response.getOutputStream().write(bytearray,0,size);

           } 
response.flushBuffer(); 
sImage.close();  
//rs.close();  
				}
%>
</body>
</html>
</body>
</html>