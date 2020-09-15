<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.UserDAO"%>
<%@page import="com.Instrusion.GlobalLog"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
</head>
<body>
<% String User=(String) session.getAttribute("User");

UserDAO dao=new UserDAO();
ResultSet rse=dao.userName(User);
String Nameu="";
while(rse.next())
{
	Nameu=rse.getString(2);
	}


%>
 <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                             <img src="ProfileImage.jsp" class="img-circle" alt="Cinque Terre" width="100" height="100">

                            <div class="inner-text">
                                <%=Nameu %> 
                            <br/>
                        </div>
                        </div>

                    </li>





                    <li>
                        <a class="active-menu" href="UserHome.jsp"><i class="fa fa-home "></i>Home</a>
                    </li>
                    
                   <li>
                        <a href="WearableAddData.jsp"><i class="fa fa-file-text"  ></i>Add Data </a>
                        </li>
                      <li>
                    
                     <li>
                        <a href="UserProfile.jsp"><i class="fa fa-file-text"  ></i>User Profile </a>
                        </li>
                      <li>
                         <a href="UserBodyInfoView.jsp"><i class="fa fa-file-image-o"></i>Body Information</a>
                      </li>
                            <li>
                               <a href="UserViewAllUserList.jsp"><i class="fa fa-file-image-o"></i>Request for data</a>
                               </li>
                            <li>
                               <a href="map.jsp"><i class="fa fa-file-image-o"></i>Map</a>
                               </li>
                              
                              
                                     
                               <li>
                                <a href="UserQABoard.jsp"><i class="fa fa-users "></i> QA Board</a>
                            </li>
                            <li>
                                <a href="UserViewAnswer.jsp"><i class="fa fa-users "></i> View Answer</a>
                            </li>
                            <li>
                                <a href="UserViewShare.jsp"><i class="fa fa-users "></i> View Share</a>
                            </li>
                               <li>
                                <a href="UserShareData.jsp"><i class="fa fa-users "></i> User Match</a>
                            </li>    
                         <li>
                                <a href="UserBarChart.jsp"><i class="fa fa-users "></i> Graph</a>
                            </li>   
                          <li>
                                <a href="Intrusion?User=<%=User %>" onmouseover="" ><i ></i></a>
                            </li>    
                          
                           
            </div>

        </nav>
</body>
</html>