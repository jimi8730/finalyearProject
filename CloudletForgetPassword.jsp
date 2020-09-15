<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<%@ include file="JavaScript.jsp" %>
</head>
<body bgcolor="Gray">

<div class="container">
    <div class="row">
     <%@ include file="LoginMenu.jsp" %>
             <br><br>        <br><br>
        <div class="col-md-6 col-md-offset-3">  
            <div class="panel panel-primary">
            
                <div class="panel-heading">Cloudlet Login Forgot Email!</div>
                <div class="panel-body">
                
                    <form role="form" method="get" action="CloudletLoginController" accept-charset="UTF-8">
         
                       
                        
                        <label for="emailaddr" class="m-t-10">Email Address</label>
                        <input type="text" id="emailaddr" class="form-control" name="email" placeholder="Example: john.smith@gmail.com">
                        
                      
                     
                        
                        <br>
                        <center><input type="submit" class=" " id="submitbtn" name="submit" value="Forgot" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        <input type="Reset" class=" " id="submitbtn" name="Reset" value="Reset"></center>
                         <br>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>