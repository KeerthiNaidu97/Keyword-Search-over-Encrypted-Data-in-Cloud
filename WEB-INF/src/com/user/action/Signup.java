package com.user.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Database.UserDAO;

public class Signup extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	String uid=null;
	String pass=null;
	String cpass=null;
	String uname=null;
	String email=null;
	String pno=null;
	String grade=null;
	
	 uid=req.getParameter("uid");
	 pass=req.getParameter("pass");
	 cpass=req.getParameter("cpass");
	 uname=req.getParameter("uname");
	 email=req.getParameter("email");
	 pno=req.getParameter("pno");
	 grade=req.getParameter("grade");
	RequestDispatcher rd;
	int k=0;
	int l=0;
	
	boolean flag=false;
	if(uid!=null && pass!=null && cpass!=null && uname!=null && email!=null && pno!=null && grade!=null)
	{
	
		
		if(pass.equals(cpass))
		{
			k=UserDAO.Checkuser(uid);
			l=UserDAO.Checkusernamechk(uname);
			
			if((k>0)&&(l>0))
			{
				rd=req.getRequestDispatcher("/signup1.jsp?no=11");
				rd.forward(req, resp);	
				
			}
		
			else
			{
				flag=UserDAO.signUp(uid, pass, uname, email, pno, grade);
				if(flag)
				{
					SendMailAttachment.sendPersonalizedMail(email, "UserName and Password", "UserId:"+uid+"\n"+"and Password:"+pass , "no");
					rd=req.getRequestDispatcher("/signup1.jsp?no=2");
					rd.forward(req, resp);
				}else
				{
					rd=req.getRequestDispatcher("/signup1.jsp?no=3");
					rd.forward(req, resp);	
				}
				
			}
			
		}else
		{
			rd=req.getRequestDispatcher("/signup1.jsp?no=4");
			rd.forward(req, resp);	
		}
		
	}

	else
	{
		rd=req.getRequestDispatcher("/signup1.jsp?no=3");
		rd.forward(req, resp);	
	}
	

}
}
