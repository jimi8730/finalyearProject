 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>  User Information</title>

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

                                <div id="reviews" class="carousel slide" data-ride="carousel">

                                    <div class="carousel-inner">
                                        <div class="item active">

                                            <div class="col-md-10 col-md-offset-1">

                                                <h4><i class="fa fa-quote-left"></i> 
                                                  Welcome to User
                                               
                                                <i class="fa fa-quote-right"></i></h4>
                                                <div class="user-img pull-right">
                                                    <img src="assets/img/d3.gif" alt="" class="img-u image-responsive" />
                                                </div>
                                                <h5 class="pull-right"><strong class="c-black">Cloud Computing</strong></h5>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-10 col-md-offset-1">

                                       
                                       
                                       
                                                <h4><i class="fa fa-quote-left"></i>
                                                                     <i class="fa fa-quote-right"></i></h4>
                                                <div class="user-img pull-right">
                                                    <img src="assets/img/d3.gif" alt="" class="img-u image-responsive" />
                                                </div>
                                                <h5 class="pull-right"><strong class="c-black">Cloud Computing</strong></h5>
                                            </div>

                                        </div>
                                        <div class="item">
                                            <div class="col-md-10 col-md-offset-1">

                                                <h4><i class="fa fa-quote-left"></i>
                                                  In medical data share based on cloudlet  
                                                <i class="fa fa-quote-right"></i></h4>
                                                <div class="user-img pull-right">
                                                    <img src="assets/img/d3.gif" alt="" class="img-u image-responsive" />
                                                </div>
                                                <h5 class="pull-right"><strong class="c-black">Cloud Computing</strong></h5>
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
    

<%}

else
{%>

<%response.sendRedirect("UserLogin.jsp");%>

<% }%>
</body>
</html>
