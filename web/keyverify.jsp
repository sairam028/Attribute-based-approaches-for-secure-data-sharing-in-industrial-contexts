<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Attribute-Based Approaches for Secure Data Sharing in Industrial Contexts</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    
  <%
            if (request.getParameter("m1") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
            if (request.getParameter("m2") != null) {%>
        <script>alert('Login Failed ');</script> 
        
        <%}
        %>
    
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h4><a href="#">Attribute-Based Approaches for Secure Data Sharing in Industrial Contexts</a></h4>
		</div>
		<div id="slogan">
			 
		</div>
	</div>
  
    <center>
	<div id="menu">
        
		<ul>
			<li ><a href="aahome.jsp">Home</a></li>
			<li><a href="aaverify.jsp">User Verify</a></li>
			<li><a href="cloudviewfilesprivate.jsp">Public Cloud</a></li>
			<li><a href="viewusers.jsp">View Users</a></li>
                        <li><a href="viewdataproviders.jsp">View Data Owners</a></li>
			<li><a href="index.html">Logout</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div>
    
   
    <div id="body">


<div id="main">
    <div id="right">
      <br>
        
        <center><h4>Decrypt Key Sent to User Mail</h4>
   <%@page import="attributebased.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="attributebased.Dbconnection"%>

                        <%
              String filename = request.getQueryString();
    try{
        
 Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from request where filename = '"+filename+"' and status='Policy Vefied'");
 

%>
     <center> <table style="width:60%" border="2">
   <tr STYLE="background-color: yellowgreen;font-size: 15px;"> 
    
       <td>File Name</td>
        <td>Owner</td>
       <td>Policy</td>
       <td>Time</td>
       <td>Experience</td>
       <td>Branch</td>
       
         <td>User</td>
         <td>Status</td>
       <td>View</td>
       
     </tr>
<%
       
   while(rs.next()){
    
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td> 
                <td><%=rs.getString(7)%></td> 
                 
                  <td><%=rs.getString("umail")%></td>
                  <td><%=rs.getString(9)%></td>
               <td><a href="keyverify1.jsp?filename=<%=rs.getString("filename")%>&umail=<%=rs.getString("umail")%>">Send Key</a> </td>
        </tr>

         <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>

                            
                        </table>

</div>

</div>
        <br>
<!--content ends -->
<!--footer begins -->

<!-- footer ends-->
</body>
</html>


