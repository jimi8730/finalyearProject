 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.ResultSet.*" %>
<%@ page import="com.DAO.UserDAO" %>
<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>  User Profile</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
   <script type="text/javascript">

onload=function()
{
	 
	var e=document.getElementById("refreshed");
	
	if(e.value=="no")
		e.value="yes";
	else
		{
		e.value="no";
		location.reload(); 
		}
	
	
	} 

</script>  
        
</head>
<body>
<%
String Name=(String)session.getAttribute("User");
GlobalLog gblog=new GlobalLog();
gblog.addlog("QA Board",Name);
%>
<input type="hidden" id="refreshed" value="no"/>
       <% 
       String user=null;
                if(session.getAttribute("User")!=null) 

                         {%>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index1.jsp"> Health Care </a>
            </div>

            <div class="header-right">
<%out.print(session.getAttribute("User")); %>
                  <a href="Logout1" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->
       <%@ include file="UserMenu.jsp" %>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line" >Privacy Protection and Instrusion avoidence<br> of medical data sharing </h1>
                        
                    </div>
                </div>
                
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-12">

                                  <div class="item">
                                            <div class="col-md-10 col-md-offset-1">
 <%
 String name=(String) session.getAttribute("User");                
 %>
           
             <div style="color:Green;" ><h3><center>Welcome <%=name %></center> </h3></div>
                           <hr>     
                            <form action="" method="get">
         <div style="border: activeborder;"  class="col-md-12 col-sm-12 col-xs-12">
               
                 <div class="col-md-4 col-sm-6 col-xs-8">
                 <TABLE class="table table-hover ">
           				 <TR class="info">
           				   
               			 	<TH> User Name</TH>
               			 	<TH> Send</TH>
               			     <TH>Action</TH>               	
                    
           				 </TR>          				
         			<%
         			
         			UserDAO dao1=new UserDAO();
             ResultSet rs=dao1.viewBodyInfo1(name);
					
				while(rs.next())
				{ 
					%>
           		<TR>
               		
               		<TD> <%= rs.getString(3)%></TD>
               		<TD> <%= rs.getString(14)%></TD>
           			<TD> <a href="UserController?Name=<%= rs.getString(3)%>">Request</a></TD>
               		    		<%-- <TD> <%= rs.getString(4) %></TD>
               		<TD> <%= rs.getString(5) %></TD>
               		<TD> <%= rs.getString(6) %></TD>
               		<TD> <%= rs.getString(7) %></TD>
               		<TD> <%= rs.getString(8) %></TD>
               	<TD> <%= rs.getString(9) %></TD> --%>
               	
      		  <%} %>
            
      			</TR>
      			
         </TABLE>                                                                                                    
                    
                 
                 
                 
                 
                 
                                      
                                    </div>
                                    <!--INDICATORS-->
                                  
                                    <!--PREVIUS-NEXT BUTTONS-->

                                </div>

                            </div>

                        </div>
                                      
                                    </div>
                                    <!--INDICATORS-->
                                   
                                    <!--PREVIUS-NEXT BUTTONS-->

                                </div>

                            </div>

                        </div>
                        <!-- /. ROW  -->
                        <hr />
                    <!-- /.REVIEWS &  SLIDESHOW  -->
                    
                    <!--/.Chat Panel End-->
                </div>
                <!-- /. ROW  -->


               
                     

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 2017 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">Projects</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    

<%
                         }                

else
{%>

<%response.sendRedirect("UserLogin.jsp");%>

<% }%>
</body>
</html>
