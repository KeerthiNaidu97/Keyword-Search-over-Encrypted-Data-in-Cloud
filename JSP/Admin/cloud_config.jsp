<%@ page import="java.sql.*" %>
<%@ page import="com.supportclass.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Database.AdminDAO"%><html>
<%
	
ResultSet list = AdminDAO.getCloud();
	
System.out.println("List :");
%>
<head>
	
</head>
<body onload="startTimer()">

<div style="position: absolute;top: 10px;left:450px;">			
	<span>
		<a href="<%=request.getContextPath()%>/JSP/Admin/editcloud.jsp" target="myframe"><img src="<%=request.getContextPath() %>/images/edit.png" height="30" width="50" /></a>
		<br><font style="font-family: cursive;size: 5px;color: #FF2400;" >Edit Cloud </font>
	</span></div>
			
				<form action="" method="get">
				
				
					<table id="login" align="center" border="1" width="500px" style="position: absolute;top: 100px;left:50px;">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:cursive;font-size: 20px;color: black;"><b>Cloud Details</b></font></td>
			     	</tr>
			     	
			     
			     	<tr>
			     		<!-- <th colspan="1" align="center">Cloud Code</th> -->
			     		<th  colspan="1" align="center">Cloud URL</th>
			     		<th  colspan="1" align="center">Cloud Name </th>
			     		<th  colspan="1" align="center">Cloud Password </th>
			     		
			     		
			     	</tr>
			     	
			     	<%
			     	if(list!=null)
			     	while(list.next())
			     	{
			     	%>
			     	
			     	<tr>
			     		<%-- <td>
			     			<%=list.getInt(1)%>
			     		</td> --%>
			     		<td >
			     			<%=list.getString(2)%>
			     		</td>
			     		
			     		<td >
			     			<%=list.getString(3)%>
			     		</td>
			     		<td >
			     			<%=list.getString(4)%>
			     		</td>
			     		
			     		
			     	</tr>
			     	
			     	<%
			     	}
			     	list.close();
			     	 %>
			     	
			     	</table>
					
					</form>
					
					<%
int no=Utility.parse(request.getParameter("no"));
if(no==1)
{
	%>
		<div class="error" id="message" style="position: absolute;top: 10px;color:red;font-size: 20px;">	
			<p>Cloud Updated Successfully!</p>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color:red;font-size: 20px;">	
			<p>Something wrong oing update ..!</p>
		</div>
	<%
}
%>
		
</body>
</html>