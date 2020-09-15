<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Medical Data</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- PAGE LEVEL STYLES -->
    <link href="assets/css/bootstrap-fileupload.min.css" rel="stylesheet" />
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
              
<div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           SINGUP FORM
                        </div>
                        <div class="panel-body">
                            <form role="form" action="TrustedPartyLoginController" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
                                   <div class="form-group">
                                            <label>Enter Trusted Authority Name</label>
                                            <input class="form-control" type="text" name="UserName" required>
                                   
                                        </div>     
                                 <div class="form-group">
                                            <label>Enter Email</label>
                                            <input class="form-control" type="text" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="abc@gmail.com">
                             
                                        </div>
                                            <div class="form-group">
                                            <label>Enter Password</label>
                                            <input class="form-control" type="password" name="password" required>
                           
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Confirm Password</label>
                                            <input class="form-control" type="password" name="Verifypass" required>
                              
                                        </div>
                                <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" type="text" name="Address" required>
                        
                                        </div>
                                  
                                        </div>
                                        <div class="form-group">
                                        <label>Enter Mobile Number</label>
                                            <input class="form-control" type="text" name="mobileNo" required pattern="^\d{10}$" title="10 numeric characters only">
                                     
                                        </div>
                        <div class="form-group">               
						<label for="gender" >Specilist</label>
                        <select id="gender" class="form-control" name="Specilist">
                            <option value="unknown">Unknown</option>
                            <option value="Cancer">Cancer</option>
                            <option value="teeth">Teeth</option>
                        </select>
                        </div>
                                        
                                         <div class="form-group">
                                            <label>Browse Photo</label>
                                            <input class="form-control" type="file" name="photo" required>
                                           
                                        </div>
                                       
                                     
                                        <button type="submit" name="submit" class="btn btn-danger" >Register Now </button>

                                    </form>
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
