<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Bloom Filter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<%=request.getContextPath() %>/css/style2.css" rel="stylesheet">
    
    <%-- <link rel="alternate stylesheet" type="text/css" media="screen" title="green-theme" href="<%=request.getContextPath() %>/css/color.css" />
	<link rel="alternate stylesheet" type="text/css" media="screen" title="blue-theme" href="<%=request.getContextPath() %>/css/orange.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="orange-theme" href="<%=request.getContextPath() %>/css/blue.css" /> --%>
	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

    <IMG SRC="<%=request.getContextPath()%>/images/cooltext322483148074143.png" width=98% height="13%" style="position: absolute;top: -0.5px;left: 5px;" BORDER="0" ALT="">
  </head>

  <body bgcolor="red">

        <div id="wrapper">

                <form name="login-form" class="form-login" action="<%=request.getContextPath()%>/AdminLogin" method="post"> 
  
                        <div class="header">
                            <a href="index.jsp" class="link-head-left"><i class="icon-home"></i></a>
                            <span>Admin Login</span>
                            <a href="javascript:void(0);" tabindex="1" class="link-head-right main-item"><i class="icon-config"></i></a>
                            <div class="config-box"> 
                              <div class="colors">
                           	  <%--  <a href="javascript:chooseStyle('blue-theme', 30)"><img src="<%=request.getContextPath() %>/images/blue.png" alt=""></a> 
                               <a href="javascript:chooseStyle('orange-theme', 30)"><img src="<%=request.getContextPath() %>/images/orange.png" alt=""></a> 
                               <a href="javascript:chooseStyle('green-theme', 30)"><img src="<%=request.getContextPath() %>/images/green.png" alt=""></a>
                               <a href="javascript:chooseStyle('none', 30)"><img src="<%=request.getContextPath() %>/images/red.png" alt=""></a>  --%>
                               <div class="clear"></div> 
                              </div>
                              
                            </div>
                        </div>
                        
                       <!--  <div class="avatar"><img src="images/avatar.png" alt=""></div> -->
                        
                        <div class="inputs">
                            <input name="userid" type="text" required placeholder="AdminId" />
                            <input name="password" type="password" required placeholder="Password" />
                
                        
                       
                        <div class="link-2"><a href="<%=request.getContextPath() %>/index.jsp">Are You User..?</a></div>
                        <div class="clear"></div>
                        
                        <div class="button-login"><input type="submit" value="Sign in"></div>
                    </div>
                    
                    
                    
                   
                </form>


     
       <div class="clear"></div>  
    <div class="link-to-page"></div>      
    </div>
    
   
    
    

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=request.getContextPath() %>/js/min.js"></script>
    <script src="<%=request.getContextPath() %>/js/switcher.js"></script>


  </body>
</html>