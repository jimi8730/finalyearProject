<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.UserDAO"%>
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
                <a class="navbar-brand" href="UserHome.jsp"> Medical Data </a>
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
                    <h1 class="page-head-line" > Privacy protection and medical data sharing </h1>
                       
                         

                    </div>
                </div>
          
  <%
  String Name=(String)session.getAttribute("User");
  UserDAO dao1=new UserDAO();
  
  String Name1=null;
  String Email=null;
  String Address=null;
  String Mobile_No=null;
  String Gender=null;
    ResultSet rs1=dao1.viewInformation(Name);
    while(rs1.next())
    {
    	Name1=rs1.getString(2);
    	Email=rs1.getString(4);
    	Address=rs1.getString(3);
    	Mobile_No=rs1.getString(7);
    	Gender=rs1.getString(8);
    }
    
    
    
    
    
	ResultSet rs=dao1.viewBodySensor();
	String Bp=null;
      String Hb=null;
      String Temp=null;


rs.last();
Bp=rs.getString(3);
Hb=rs.getString(2);
Temp=rs.getString(4);

System.out.println("BP=="+Bp);
System.out.println("Hb=="+Hb);
System.out.println("Temp=="+Temp);

  
  %>        
          
              
<div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                         User Body Information
                        </div>
                        <div class="panel-body">
                            <form  action="WearableController" method="post"  enctype="multipart/form-data">
                                   <div class="form-group">
                                            <label>Enter User Name</label>
                                            <input class="form-control" type="text" name="UserName" value=<%=Name1 %> pattern="[a-zA-Z\s]+" placeholder="Example: John" required>
                                   
                                        </div>     
                                 <div class="form-group">
                                            <label>Enter User Email</label>
                                            <input class="form-control" type="text" name="email" value=<%=Email %> required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="Example: john.smith@gmail.com" title="abc@gmail.com">
                             
                                        </div>
                                            <div class="form-group">
                                            <label>Enter BP</label>
                                            <input class="form-control" type="text" name="BP" value=<%=Bp %> pattern="[0-9]+" placeholder="Example: 100" required>
                           
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Heart Beat</label>  
                                            <input class="form-control" type="text" name="HB" value=<%=Hb %> pattern="[0-9]+" placeholder="Example: 50" required>
                              
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Temprature</label>
                                            <input class="form-control" type="text" name="temp" value=<%=Temp %> pattern="[0-9]+" placeholder="Example: 40" required>
                              
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Age</label>
                                            <input class="form-control" type="text" name="age"  pattern="[0-9]+" placeholder="Example: 24" required>
                              
                                        </div>
                                <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" type="text" name="Address" value=<%=Address %>   placeholder="Example: Pune" required>
                        
                                        </div>
                                   <div class="form-group">
                                            <label>Blood Group</label>
                                            <input class="form-control" type="text" name="Blood"  placeholder="Example: O+" required>
                        
                                        </div>
                                   
                                    <div class="form-group">
                                            <label>Previous Disease/Allergy</label>
                                            <input class="form-control" type="text" name="Diease"  placeholder="Enter NULL If No Disease or Allergy" required>
                        
                                        </div>
                                   
                                    
                                      <div class="form-group">
                                        <label>Enter Mobile Number</label>
                                            <input class="form-control" type="text" name="mobileNo" value=<%=Mobile_No %> required pattern="[0-9]{10}" placeholder="Example: 9636789565" title="10 numeric characters only">
                                         
                                        </div>
                         <div class="form-group">               
						<label for="gender" >Your Gender</label>
                        <select id="gender" class="form-control" name="gender" value=<%=Gender %>>
                            <option value="unknown">Unknown</option>
                            <option value="Female">Female</option>
                            <option value="Male">Male</option>
                        </select>
                        </div>
                                        
                                         <div class="form-group">
                                            <label>Browse Photo</label>
                                            <input class="form-control" type="file" name="photo" >
                                          
                                        </div>
                                       <div class="form-group">
                                            <label>Upload File</label>
                                            <input class="form-control" type="file" name="file" >
                                          
                                        </div>
                                       
                                     
                                        <button type="submit" name="submit" class="btn btn-danger" value="Store" >Submit</button>

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

<%}

else
{%>

<%response.sendRedirect("UserLogin.jsp");%>

<% }%>
</body>
</html>
