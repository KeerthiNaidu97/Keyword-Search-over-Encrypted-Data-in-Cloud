<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="com.supportclass.*" %>
<html>
<head>
<%! 
public int convert(String str) 
{ 
	int conv=0; 
	if(str==null) 
	{ 
		str="0"; 
	} 
	else if((str.trim()).equals("null")) 
	{ 
		str="0"; 
	} 
	else if(str.equals("")) 
	{ 
		str="0"; 
	} 
	try
	{ 
		conv=Integer.parseInt(str); 
	} 
	catch(Exception e) 
	{ 
	} 
	return conv; 
	} 
%>

<link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/pagination.js"></script>
</head>
<body>
<center>
<%


ResultSet rs = UserDAO.getUsers();



%>
<br></br>
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table class="pretty-table" border="1" id="user">
  
<!-- <th scope="col">User No</th>  -->
 <!--    <th scope="col"> ID</th> -->
    <th scope="col"> UserId</th>
    <th scope="col"> UserName</th>
    <th scope="col"> EmailId</th>
    <th scope="col">PhoneNo</th>
        <th scope="col">Department</th>
     <th scope="col">DELETE</th>
  
<%while(rs.next())
	{%>
  <tr>
   <%--  <td><%=rs.getInt(1) %></td> --%>
    <%-- 	<td><%=rs.getString(1)%></td> --%>
    	<td><%=rs.getString(2)%></td>
    	<td><%=rs.getString(3)%></td>
    	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(5) %></td>
    	    	<td><%=rs.getString(6) %></td>
    	<td><a href="<%=request.getContextPath()%>/EditProfile?requestno=<%=rs.getString(1)%>&no=3"><font style="color: blue;"><b>Delete</b></font></a></td>
  </tr>
<%
}
%>

</table>
</div>
</center>
<%	
		int no=Utility.parse(request.getParameter("no"));
	System.out.println("No :"+no);
		if(no==1)
		{%>
		<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px;font-family: monotype corsiva; ">
		<p>User Details Updated Successfully..</p>	
		</div>
		
					
		<%}
		if(no==2)
		{%>
		
			<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px; ">	
		
		<p>User Deleted Successfully</p>	
		</div>		
		<%
		}
		
		
	%>
	
	<div id="pageNavPosition" style="position:absolute;top:380px;left:400px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',10); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>