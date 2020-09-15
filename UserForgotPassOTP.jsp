

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>  Nearest Search</title>

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
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index1.jsp"> Medical Data </a>
            </div>

            <div class="header-right">

                <a href="Logout1" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <%@ include file="LoginMenu.jsp" %>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line" > Privacy protection and medical data sharing </h1>
                        
                    </div>
                </div>
                <div>
                <%
	String SucInfo=(String)request.getAttribute("SucInfo");
if(SucInfo!=null && SucInfo!="")
{
%>
<p style="color:Blue;"><%=SucInfo %></p>
<%} %>
</div>
                <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                          <div style="color: purple" > <b>   One Time Password   </b></div>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="UserLoginController" method="get">
                                        <div class="form-group">
                                            <label>Enter OTP</label>
                                            <input class="form-control" type="text" name="otp" required>
                                           
                                        </div>
                                  
                                         
                                    <div><input type="Reset" class="btn btn-danger"  value="Reset">
                                        <input type="submit" name="submit" class="btn btn-primary " value="Submit_OTP"></div>
                                    <hr />
                                    Go to <a href="index1.jsp">Home</a> 
                                    </form>
                            </div>

                                    </form>
                            </div>
                        </div>
                            </div>
               
                    
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
        &copy; 2017 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">Medical Data</a>
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
    


</body>                                    
</html>

