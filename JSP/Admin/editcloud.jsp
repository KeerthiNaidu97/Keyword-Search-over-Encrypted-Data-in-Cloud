<%@ page import="com.supportclass.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database.AdminDAO"%><html>
<head>
	<%
	int c_code=0;
	String cname ="",cuser="",cpass="";
		ResultSet rs = AdminDAO.selectCloud();
	while(rs.next())
	{
		c_code = rs.getInt(1);
		cname = rs.getString(2);
		cuser = rs.getString(3);
		cpass = rs.getString(4);
		
	}
	%>
	
</head>
<body onload="startTimer()">
	<form id="login" action="<%=request.getContextPath() %>/EditCloud" method="post">
		
		
		<br></br>
	<div id="a1" style="position: absolute;top: 30px;left: 200px;">
	
	 <table id="login" align="center">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Edit Cloud Details</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Cloud Code</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="c_c" value="<%=c_code%>" readonly="readonly">
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td> URL</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="curl" value="<%=cname%>" requied="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>User Name </td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="cuname"  value="<%=cuser%>" requied="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>Password</td>
			     		<td>:</td>
			     		<td><input class="field" type="text" name="cpass" value="<%=cpass%>" requied="yes"></input></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     	<td colspan="3" align="center">
			     	<input type="submit" value="Update" />
			     	
			     	</td>
			     	</tr>
	
		
	</table></div></form>
<%
int no=Utility.parse(request.getParameter("no"));
if(no==1)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color:red;font-size: 20px;">	
			<p>Opp's,your current password is wrong ..!</p>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Opp's,your new password do not match with confirm password ..!</p>
		</div>
	<%
}
if(no==3)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Opp's,Seems something went wrong....!</p>
		</div>
	<%
}
if(no==4)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Cloud Updated Successfully....!</p>
		</div>
	<%
}
%>	
	
</body>
</html>