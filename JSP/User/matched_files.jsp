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

<%	
		int no=Utility.parse(request.getParameter("no"));
	System.out.println("No :"+no);
		if(no==1)
		{%>
		<div  style="position: absolute;top: -10px;left: 50px;color: #000;font-size: 20px;font-family: monotype corsiva; ">
		<p>Files Not Available......!</p>	
		</div>
		
					
		<%}
		else
		{
		%>
		
		<center>
<%
System.out.println("Test Data ");

ResultSet rs = (ResultSet) request.getAttribute("rs");

while(rs.next())
{
	System.out.println("Test Data "+rs.getInt(1));
}


%>
<br></br>
<div style="position: absolute;top: 10px;left: 220px;">
<p style="color: red;"><b>Ranked Files from Server</b></p>
</div>
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table class="pretty-table" border="1" id="user">
  
    <th scope="col">Trans No</th>
    <th scope="col"> File Name</th>
    <th scope="col"> Rank</th>
    <th scope="col">Download</th>
  
<%while(rs.next())
	{%>
  <tr>
    <td><%=rs.getInt(1) %></td>
    	<td><%=rs.getString(2)%></td>
    	<td><%=rs.getString(3)%></td>
    	<td><a href="<%=request.getContextPath()%>/JSP/User/select_publickey.jsp?filename=<%=rs.getString(2)%>&no=0"><font style="color: blue;"><b>Download</b></font></a></td>
  </tr>
<%
}
%>

</table>
</div>
</center>
		
		
		<%
		
		
			
		}
			
		
	%>
	
	<div id="pageNavPosition" style="position:absolute;top:450px;left:100px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>