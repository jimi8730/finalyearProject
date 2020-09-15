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
    		Connection con=DBConnection.getConnection();
            ArrayList arr1=new ArrayList();
             ArrayList arr2=new ArrayList();
              ArrayList arr3=new ArrayList();
              double filelength=0;
   
         Statement st;
         ResultSet rs;
         String sql="SELECT * FROM  trust_tbl order by Id desc";
         st=con.createStatement();
         rs=st.executeQuery(sql);
         while(rs.next())
         {
             filelength=0.5;
             arr1.add(rs.getInt(6));
             if(arr2.size()<5)
             arr2.add(rs.getInt(7));
             
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
            text: 'Similarity',
            x: -20 
        },
        subtitle: {
        	text: 'Parameters: X-Axies: Users Reputation and Similarity, Y-Axies: Trust Level  ',
            x: -20
        },
        xAxis: {
        	title: {
                text: 'Users Reputation and Similarity'
            },
            categories: ['<%= arr11 %>']
        },
        yAxis: {
            title: {
                text: ' Trust Level'
            },
            plotLines: [{
                value: 0.5,
                width: 0.5,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°ms'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Similarity',
            data: [<%=arr22%>]
        }]
    });
});

</script>
  </head> 
<body>
        
<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<div class="wrapper" style="height:1000px;">
           <h2 class="style1"></h2>
            <div align="right"><a style="color:blue " href="UserHome.jsp" class="list3" >Go Back</a></div>
        </div>    
</body></html>