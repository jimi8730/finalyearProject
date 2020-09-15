 <%@page import="com.Bean.DoctorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>  Admin Template</title>

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
                <a class="navbar-brand" href="index1.jsp"> Health Care </a>
            </div>

<div class="header-right">
            <%out.print(session.getAttribute("User")); %>
 <a href="Logout1" class="btn btn-danger" title="Logout1"><i class="fa fa-exclamation-circle fa-2x"></i></a>

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
                <div id="reviews" class="carousel slide" data-ride="carousel">
                
                <!-- /. ROW  -->
                        
                 <%
                 
                 DoctorBean bean=new DoctorBean();
                 String Id=request.getParameter("ID");
                 String Name=request.getParameter("Name");
                 String Email=request.getParameter("Email");
                 String Question=request.getParameter("Question");
                 String Date=request.getParameter("Date");
               
                 System.out.println(Question);
                 %>                       
                           
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-12">
 <div class="item">
               <form action="DoctorController" method="post">
    <div class="txt">
    <input type="text" id="user" name="ID" value="<%=Id %>" Placeholder="Give Answer"  />
    
    <input type="text" id="user" name="Name" value="<%=Name %>" Placeholder="User Name"  />
    
     <input type="Date" id="user" name="date" value="<%=Date %>" Placeholder="Date"  />
    <label for="user" class="entypo-user"></label>
  </div> <br> 
   
    <div class="txt">
   
   <textarea id="user" name="Email"  ROWS="1" cols="50" ><%=Email %></textarea>
    <label for="user" class="entypo-user"></label>
  </div><br>  
               
  <div class="txt">
    <textarea id="user" name="Question"  ROWS="5" cols="50" ><%=Question %></textarea>
    <label for="user" class="entypo-user"></label>
  </div><br>
  
   <div class="txt">
    <textarea id="user" name="Answer" Placeholder="Give Answer" ROWS="5" cols="50" ></textarea>
    <label for="user" class="entypo-user"></label>
  </div>
  <br>
  <div class="buttons">
    <input type="submit" name="submit" value="Answer" />
     </div>
  </form>

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
        &copy; 2018 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">Projects</a>
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
    <%}

else
{%>

<%response.sendRedirect("DoctorLogin.jsp");%>

<% }%>


</body>
</html>
