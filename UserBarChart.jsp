
<%@page import="com.DAO.UserDAO"%>
<%@page import="com.Connection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 --%><%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Connection con=DBConnection.getConnection();
ArrayList arr1=new ArrayList();
 ArrayList arr2=new ArrayList();
  ArrayList arr3=new ArrayList();
  double filelength=0;

/* Statement st;
ResultSet rs;
String sql="SELECT * FROM  trust_tbl order by Id desc";
st=con.createStatement();
rs=st.executeQuery(sql);
while(rs.next())
{
 filelength=0.5;
 int a =rs.getInt(6);
 if(arr2.size()<5)
 arr2.add(rs.getInt(7));
 
//arr1.add(Double.valueOf(filelength)/1000);
		
} */

double HetAcc=0;
double HetPre=0;
UserDAO dao=new UserDAO();

ResultSet rs1=dao.fetchInfo();
while(rs1.next())
{
	
	HetAcc=rs1.getDouble(6);
	HetPre=rs1.getDouble(7);
	/* HetRecall=rs1.getInt(4);
	HetFMesure=rs1.getInt(5); */
}
/* String PA="PA";
ResultSet rs2=dao.fetchInfo(PA);
while(rs2.next())
{
	
	PAAcc=rs2.getInt(2)-a;
	PAPre=rs2.getInt(3)-b;
	PARecall=rs2.getInt(4)-a;
	PAFMesure=rs2.getInt(5)-b;
}
 */


Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "User A"); map.put("y", HetAcc); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "User B"); map.put("y", HetPre); list.add(map);
/* map = new HashMap<Object,Object>(); map.put("label", "Recall"); map.put("y", HomRecall); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FMesure"); map.put("y", HomFMesure); list.add(map);
 */

String dataPoints1 = gsonObj.toJson(list);
 /* 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Accuracy"); map.put("y", HetAcc); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Precision"); map.put("y", HetPre); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Recall"); map.put("y", HetRecall); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FMesure"); map.put("y", HetFMesure); list.add(map);

String dataPoints2 = gsonObj.toJson(list);

list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Accuracy"); map.put("y", PAAcc); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Precision"); map.put("y", PAPre); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Recall"); map.put("y", PARecall); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "FMesure"); map.put("y", PAFMesure); list.add(map);

String dataPoints3 = gsonObj.toJson(list);
 */%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Privacy Medical Data</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "dark1",
	title: {
		text: "Comparision Graph"
	},
	axisY: {
		title: "",
	},
	toolTip: {
		shared: true
	},
	legend: {
		cursor: "pointer",
		itemclick: toggleDataSeries
	},
	data: [{
		type: "column",
		name: "Similarity",
		yValueFormatString: "#0.0# million tonnes",
		showInLegend: true,
		dataPoints: <%out.print(dataPoints1);%>
	} <%-- {
		type: "column",
		name: "HetOTL",
		yValueFormatString: "#0.## million tonnes",
		showInLegend: true,
		dataPoints: <%out.print(dataPoints2);%>
	},{
		type: "column",
		name: "PA",
		yValueFormatString: "#0.## million tonnes",
		showInLegend: true,
		dataPoints: <%out.print(dataPoints3);%>
	} --%>
	
	]
});
chart.render();
 
function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	}
	else {
		e.dataSeries.visible = true;
	}
	chart.render();
}
 
}
</script>
</head>
<body>
<div id="wrapper">
<%--  <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <!-- <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Online Transfer</a>
            </div> -->
            <!-- /.navbar-header -->
           <!--  <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
	        		
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>
						</li>
					</li>
						<li class="m_2"><a href="User_Profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Logout1"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul> -->
	      		</li>
			</ul>
			<!-- <form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form> -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
        <%@ include file="UserMenu.jsp" %>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav> --%>
        </div>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<br><br><br><br>
<div align="center">
<a href="UserHome.jsp">Go Back</a>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>

   </div>
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
               