<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<%@ include file="JavaScript.jsp" %>
</head>
<body>

<div class="container">
    <div class="row">
     <%@ include file="LoginMenu.jsp" %>
        <div class="col-md-6 col-md-offset-3">  
            <div class="panel panel-primary">
            
                <div class="panel-heading">Sign Up!</div>
                <div class="panel-body">
                
                    <form role="form" method="post" action="DoctorLoginController" accept-charset="UTF-8" enctype="multipart/form-data">
                 
                        <label for="fname">User Name</label>
                        <input type="text" id="fname" class="form-control" name="UserName" placeholder="Example: John">
                        
                        
                        <label for="states" class="m-t-10">Address</label>
                          <input type="text" id="address" class="form-control" name="Address" placeholder="Example: Smith">
                     
                        <label for="gender" class="m-t-10">Your Gender</label>
                        <select id="gender" class="form-control" name="gender">
                            <option value="unknown">Unknown</option>
                            <option value="Female">Female</option>
                            <option value="Male">Male</option>
                        </select>
                        
                        <label for="emailaddr" class="m-t-10">Email Address</label>
                        <input type="text" id="emailaddr" class="form-control" name="email" placeholder="Example: john.smith@gmail.com">
                        
                        <label for="password" class="m-t-10">Password</label>
                        <input type="password" id="password" class="form-control" name="password" placeholder="">
                        
                        <label for="verifypass" class="m-t-10">Verify Password</label>
                        <input type="password" id="confirmpass" class="form-control" name="Verifypass" placeholder="">
                         <label for="mobile" class="m-t-10">Mobile Number</label>
                          <input type="text" id="mobile" class="form-control" name="mobileNo" placeholder="Example: Smith">
                     
                       <br>
                        <input type="file" name="photo">
                        
                        
                        <br>
                        <center><input type="submit" class=" " id="submitbtn" name="submit" value="Create">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        <input type="submit" class=" " id="submitbtn" name="Cancel" value="Cancel"></center>
                      
                        <br>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>