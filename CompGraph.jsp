<%@page import="com.DAO.DoctorDAO"%>
<%@page import="com.Connection.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    
    <head>
        <script type="text/javascript" src="assets/js/jquery-1.9.1.min.js"></script>
    <title>Uploading Time Computation Against File Length</title>
        <script src="assets/js/highcharts.js"></script>

<script>
    <%        
    		
            ArrayList arr1=new ArrayList();
             ArrayList arr2=new ArrayList();
              ArrayList arr3=new ArrayList();
              double filelength=0;
   
              DoctorDAO dao=new DoctorDAO();
        
        ResultSet rs=dao.fetchInformation();
         while(rs.next())
         {
           
             arr1.add(rs.getInt(2));
           //  if(arr2.size()<5)
             arr2.add(rs.getInt(3));
             
            //arr1.add(Double.valueOf(filelength)/1000);
         		
         }
         
        String  arr11=arr1.toString().replace("[", "").replace("]", "")
            .replace(", ", "','");
         String  arr22=arr2.toString().replace("[", "").replace("]", "")
            .replace(", ", ",");
         String  arr33=arr3.toString().replace("[", "").replace("]", "")
                 .replace(", ", ",");
    %>
    

$(function () {
    $('#container').highcharts({
        title: {
            text: 'Comparision of User Encryption And Remote Encryption',
            x: -20 
        },
        subtitle: {
        	text: 'Parameters: X-Axies: Time , Y-Axies: Delivery Ratio  ',
            x: -20
        },
        xAxis: {
        	
        	title: {
                text: 'Time'
            },
            categories: ['<%= arr11 %>']
        },
        yAxis: {
            title: {
                text: ' Delivery Ratio'
            },
            plotLines: [{
                value: 0,
                width: 0.5,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: 'sec'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Remote End',
          
            data: [<%=arr22%>], 
       		
        }],
        
    });
});

</script>
  </head> 
<body>
        
<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<div class="wrapper" style="height:1000px;">
           <h2 class="style1"></h2>
            <div align="right"><a style="color:blue " href="DoctorHome.jsp" class="list3" >Go Back</a></div>
        </div>    
</body></html>