
<%@page import="com.Database.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.supportclass.*"%><html>
<head>
	
</head>
<%
//HttpSession hs = request.getSession();

//String id = hs.getAttribute("useid").toString();
//hs.setAttribute("useid1",id);



%>


<body onload="startTimer()">


<form id="login" action="<%=request.getContextPath() %>/FileUpload" enctype="multipart/form-data" method="post">
		
			<div class="tab" style="position:absolute;top:80px;left:100px;width:400px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:cursive;font-size: 20px;color:black;"><b>File Upload Process</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Choose Your File</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	<tr>
			     			<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     			
			     	</tr>
			     </table>
			     <br><br>
				<input class="gradientbuttons" type="submit" name="submit" value="Upload" style="position:absolute;top:180px;left:100px;"/>
			</div>
			
			
			
			
			
			
</form>

<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#33A1C9;font-family: monotype corsiva;">	
    		<p>File Uploaded Successfully.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==2)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: #33A1C9;font-family: monotype corsiva;">	
			<p>Opp's something went wrong.....!</p>
		</div>			
	<%
	}
	
	%>
</body>
</html>