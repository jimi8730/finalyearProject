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
                             <form role="form" method="post" action="UserLoginController" accept-charset="UTF-8" enctype="multipart/form-data">
                 
                        <label for="fname">User Name</label>
                        <input type="text" id="fname" class="form-control" name="UserName"  pattern="[a-zA-Z\s]+" placeholder="Example: John" required>
                        
                        
                        <label for="states" class="m-t-10">Address</label>
                          <input type="text" id="address" class="form-control" name="Address" placeholder="Example: Smith" required>
                     
                        <label for="gender" class="m-t-10">Your Gender</label>
                        <select id="gender" class="form-control" name="gender">
                            <option value="unknown">Unknown</option>
                            <option value="Female">Female</option>
                            <option value="Male">Male</option>
                        </select>
                        
                        <label for="emailaddr" class="m-t-10">Email Address</label>
                        <input type="text" id="emailaddr" class="form-control" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="Example: john.smith@gmail.com" required>
                        
                        <label for="password" class="m-t-10">Password</label>
                        <input type="password" id="password" class="form-control" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Example: Abcdsd@123" required>
                        
                        <label for="verifypass" class="m-t-10">Verify Password</label>
                        <input type="password" id="confirmpass" class="form-control" name="Verifypass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Example: Abcdsd@123" required>
                         <label for="mobile" class="m-t-10">Mobile Number</label>
                          <input type="text" id="mobile" class="form-control" name="mobileNo" pattern="^\d{10}$" title="10 numeric characters only"  required>
                     
                       <br>
                        <input type="file" name="photo">
                        
                        
                        <br>
                        <div class="form-group">
                      <input type="submit" class=" btn btn-success" id="submitbtn" name="submit" value="Create">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        <input type="submit" class="btn btn-danger " id="submitbtn" name="Cancel" value="Cancel">
                      </div>
                        <br>
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
