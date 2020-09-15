 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.ResultSet.*" %>
<%@ page import="com.DAO.DoctorDAO" %>
<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Doctor</title>

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
                <a class="navbar-brand" href="DoctorHome.jsp"> Health Care </a>
            </div>

            <div class="header-right">
<%out.print(session.getAttribute("User")); %>
                  <a href="Logout1" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->
       <%@ include file="DoctorMenu.jsp" %>
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
                                            <div class="col-md-12 col-md-offset-1">
 <%
 String name=(String) session.getAttribute("User");                
 %>
           
             <div style="color:Green;" ><h3><center>Welcome <%=name %></center> </h3></div>
                           <hr>     
                           
         <div style="border: activeborder;"  class="col-md-12 col-sm-12 col-xs-12">
               
                 <div class="col-md-12 col-sm-14 col-xs-12">
                 	
         			<%
         			System.out.println("i m in Save button");
        			String Name=request.getParameter("Name");
        			String email=request.getParameter("Email");
        			
        			int bp=Integer.parseInt(request.getParameter("Bp"));
        			int hb=Integer.parseInt(request.getParameter("Hb"));
        			int temp=Integer.parseInt(request.getParameter("Temp"));
        			
        		//	String name=U
        			String address=request.getParameter("Address");
        			String mobileNo=request.getParameter("MobileNo");
        			String gender=request.getParameter("Gender");
         			
         			
         			DoctorDAO dao1=new DoctorDAO();
             
         					
					
				%>
				<div class="col-md-10 col-sm-12 col-xs-18">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                         User Body Information Add MI Diease
                        </div>
              <div class="panel-body">
                            <form  action="DoctorController" method="post"  enctype="multipart/form-data">
                                   <div class="form-group">
                                            <label>Enter User Name</label>
                                            <input class="form-control" type="text" name="Name" value="<%=Name %>" pattern="[a-zA-Z\s]+" required>
                                   
                                        </div>     
                                 <div class="form-group">
                                            <label>Enter User Email</label>
                                            <input class="form-control" type="text" name="Email" value="<%=email %>" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="abc@gmail.com">
                             
                                        </div>
                                            <div class="form-group">
                                            <label>Enter BP</label>
                                            <input class="form-control" type="text" name="BP" value="<%=bp %>" pattern="[0-9]+" required>
                           
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Heart Beat</label>
                                            <input class="form-control" type="text" name="HB" value="<%=hb %>" pattern="[0-9]+" required>
                              
                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Enter Temprature</label>
                                            <input class="form-control" type="text" name="Temp" value="<%=temp %>" pattern="[0-9]+" required>
                              
                                        </div>
                                <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" type="text" name="Address"  value="<%=address %>" required>
                        
                                        </div>
                                  
                                    
                                      <div class="form-group">
                                        <label>Enter Mobile Number</label>
                                            <input class="form-control" type="text" name="MobileNo" value="<%=mobileNo %>" required pattern="[0-9]{10}" title="10 numeric characters only">
                                         
                                        </div>
                                       
                        <div class="form-group">               
						<label for="gender" >Your Gender</label>
                        <select id="gender" class="form-control" name="gender" value="<%=gender %>" >
                            <option value="Unknown">Unknown</option>
                            <option value="Female">Female</option>
                            <option value="Male">Male</option>
                        </select>
                        </div> 
                        
                        
                         <div class="form-group">
                                            <label>Diease Information</label>
                                            <input class="form-control" type="text" name="Diease" required>
                        
                                        </div>
                         <div class="form-group">
                                            <label>Diease Symptoms</label>
                                            <input class="form-control" type="text" name="Symptom" required>
                        
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>Certificate Photo</label>
                                            <input class="form-control" type="file" name="Photo" required>
                                          
                                        </div>
                                       
                                     
                                        <button type="submit" name="submit" class="btn btn-danger" value="EMRReport" >EMRReport</button>

                                    </form>
                            </div>
                 </div>
                 
                 
                 
                 </div>
                 
                 
                 
                 
                                      
                                    </div>
                                    <!--INDICATORS-->
                                    <ol class="carousel-indicators">
                                        <li data-target="#reviews" data-slide-to="0" class="active"></li>
                                        <li data-target="#reviews" data-slide-to="1"></li>
                                        <li data-target="#reviews" data-slide-to="2"></li>
                                    </ol>
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
</div>
</div>

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
