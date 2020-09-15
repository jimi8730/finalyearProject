<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
</head>
<body>
 <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                             <img src="ProfileImage.jsp" class="img-circle" alt="Cinque Terre" width="100" height="100">

                            <div class="inner-text">
                                User 
                            <br/>
                        </div>
                        </div>

                    </li>


                    <li>
                        <a class="active-menu" href="DoctorHome.jsp"><i class="fa fa-home "></i>Home</a>
                    </li>
                     <li>
                        <a href="DoctorViewUserInformation.jsp"><i class="fa fa-file-text"  ></i>User Information </a>
                        </li>
                    <li>
                        <a href="DoctorViewEMR.jsp"><i class="fa fa-file-text"  ></i>View EMR </a>
                        </li>
                    <li>
                        <a href="DoctorViewQuestion.jsp"><i class="fa fa-file-text"  ></i>View Question </a>
                        </li>  
                        
                        <li>
                        <a href="DoctorViewEMREncrypt.jsp"><i class="fa fa-file-text"  ></i>Encrypt EMR </a>
                        </li>     
                        
                          <li>
                        <a href="CompGraph.jsp"><i class="fa fa-file-text"  ></i>Graph </a>
                        </li>        
            </div>

        </nav>
</body>
</html>