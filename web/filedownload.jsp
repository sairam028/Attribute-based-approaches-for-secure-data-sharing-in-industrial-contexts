<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="attributebased.Dbconnection"%>
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
            if (request.getParameter("download") != null) {%>
        <script>alert('Vefication Failed   Key not Matched');</script>
        <%}
            if (request.getParameter("download1") != null) {%>
        <script>alert('Vefication Failed   Key not Matched');</script> 
        
         <%}
            if (request.getParameter("download2") != null) {%>
        <script>alert('Download Failed ');</script> 
         <%}
            if (request.getParameter("download3") != null) {%>
        <script>alert('Download Failed ');</script> 
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
			<li><a href="userhome.jsp">Home</a></li>
                        <li><a href="userviewfiles.jsp">Cloud Files</a></li>
			<li class="selected"><a href="filedownload.jsp">Download Files</a></li>			
			<li class="last"><a href="index.html">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<br>
 
    <div id="body">


  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
         
         <div class="clr"></div>
         <!---Start Body --->
        
<% 
String mail=session.getAttribute("username").toString();

try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/att","root","root");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from request where umail='"+mail+"'and status='Policy Vefied'  ");
       
        
	ResultSet rs=pst.executeQuery();
        %>
        
        <center> <table style="width:80%" border="2">
         <div id="splash">
		<img class="pic" src="images/arcte.JPG" width="600" height="230" alt="" />
	</div><br>
         <h3> File DOwnload</h3>
  <tr>
    
     <th><font color="red"> File Name</th>
     <th><font color="red"> Owner</th>
     <th><font color="red"> Policy</th>
      <th><font color="red"> Time</th>
      <th><font color="red"> Experience</th>
      <th><font color="red"> Branch</th>
     <th><font color="red"> View</th>
     
</tr>

<%
       
    while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
               
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                  <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
               
        
                <td> <a href="filedownload1.jsp?filename=<%=rs.getString("filename")%>&data=<%=rs.getString("data").replaceAll("\\+", "%2B")%>&owner=<%=rs.getString("owner")%>&policy=<%=rs.getString("policy")%>&time=<%=rs.getString("time")%>&exp=<%=rs.getString("exp")%>&branch=<%=rs.getString("branch")%>"><font style="color: green; font-size: 16px">View</a></font> </td>
                
      <%
      System.out.println("99999999"+rs.getString("data").replaceAll("\\+", "%2B"));
    }

}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        </table>
        <br><br><br><br>
         <center>
                                  
 
</body>
</html>

