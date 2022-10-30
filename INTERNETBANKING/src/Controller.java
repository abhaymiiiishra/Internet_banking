import java.io.IOException;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import p.*;
import javax.servlet.*;
import javax.servlet.http.*;
 public class Controller extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
	public Controller() {
		super();
	}   	
	protected void function(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String userAction=req.getParameter("action");
		
			if(userAction.equals("LOGIN")){
				search(req,res);
			}
			else if(userAction.equals("OPEN ACCOUNT")){
				open(req,res);
			}
			else if(userAction.equals("PAY")){
				pay(req,res);
			}
			else if(userAction.equals("TRANSFER")){
				transfer(req,res);
			}
			else if(userAction.equals("CHANGE NAME")){
				nameu(req,res);
			}
			else if(userAction.equals("CHANGE PASSWORD")){
				emailu(req,res);
			}
			else if(userAction.equals("CHANGE MOBILE")){
				mobileu(req,res);
			}
			else 
			{	RequestDispatcher rd=req.getRequestDispatcher("main.jsp");
				if(userAction.equals("reg")){
						rd=req.getRequestDispatcher("main.jsp");
				}
				if(userAction.equals("Personal Banking")){
						rd=req.getRequestDispatcher("as.jsp");
				}
				else if(userAction.equals("forget")){
					rd=req.getRequestDispatcher("forget.jsp");
				}
				else if(userAction.equals("mini")){
					ArrayList person=(ArrayList)req.getAttribute("list");
					PersonInfo per=null;
					rd=req.getRequestDispatcher("2.jsp");
				}
				else if(userAction.equals("home")){
					req.setAttribute("file","login.jsp");
					rd=req.getRequestDispatcher("BAAP.jsp");
				}
				else if(userAction.equals("contact")){
					req.setAttribute("file","contact.jsp");
					rd=req.getRequestDispatcher("contact.jsp");
				}
				else if(userAction.equals("registration")){
					req.setAttribute("file","registration.jsp");
					rd=req.getRequestDispatcher("registration.jsp");
				}
				else if(userAction.equals("TYPE HERE TO PROCEED")){
					req.setAttribute("file","login.jsp");
					rd=req.getRequestDispatcher("main.jsp");
					
				}
				rd.forward(req,res);
			}	
		}	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		function(request,response);
	}  	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		function(request,response);	
	}
	protected void open(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			String log=req.getParameter("log");
			String pas=req.getParameter("pas");
		
			Integer nwac=Integer.parseInt(req.getParameter("acn"));
			
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PDAO pdao=new PDAO();
			Integer i=pdao.reg(personn,log,pas,nwac);
			PDAOU pdaou=new PDAOU();
			session.setAttribute("A",i);
			PersonInfo person=new PersonInfo();
	
			RequestDispatcher rd=req.getRequestDispatcher("newregistration.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void transfer(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			PDAOU pdaou=new PDAOU();
			PDAO pdao=new PDAO();
			PersonInfo person=new PersonInfo();
			float name=Float.parseFloat(req.getParameter("amt"));
			Integer nam=Integer.parseInt(req.getParameter("option"));
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PersonInfo per=null;
			person=(PersonInfo)personn.get(0);
			
			personn=pdaou.transfer(person.getcac(),name,personn,nam);	
			ArrayList personlist=pdao.retrieve(person.getid(),person.getpass());
			session.setAttribute("ATT", personlist);
			RequestDispatcher rd=req.getRequestDispatcher("TRANSFERMONEY.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void pay(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			PDAOU pdaou=new PDAOU();
			PDAO pdao=new PDAO();
			PersonInfo person=new PersonInfo();
			float name=Float.parseFloat(req.getParameter("PayAmount"));
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PersonInfo per=null;
			person=(PersonInfo)personn.get(0);
			personn=pdaou.uppay(person.getcac(),name,personn);	
			ArrayList personlist=pdao.retrieve(person.getid(),person.getpass());
			session.setAttribute("ATT", personlist);
			RequestDispatcher rd=req.getRequestDispatcher("afterlogin.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void emailu(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			PDAOU pdaou=new PDAOU();
			PersonInfo person=new PersonInfo();
			String name=req.getParameter("cpass");
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PersonInfo per=null;
			person=(PersonInfo)personn.get(0);
			pdaou.emailupd(person.getid(),name);			
			Integer i=personn.size();
			for(Integer j=0;j<i;j++)
			{
				person=(PersonInfo)personn.get(j);
				person.setpass(name);				
				personn.set(j, person);
			}	
			session.setAttribute("ATT", personn);
			RequestDispatcher rd=req.getRequestDispatcher("afterlogin.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void mobileu(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			PDAOU pdaou=new PDAOU();
			PersonInfo person=new PersonInfo();
			String name=req.getParameter("mobile");
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PersonInfo per=null;
			person=(PersonInfo)personn.get(0);
			pdaou.mobileupd(person.getid(),Long.parseLong(name));			
			
			Integer i=personn.size();
			for(Integer j=0;j<i;j++)
			{
				person=(PersonInfo)personn.get(j);
				person.setmobile(Long.parseLong(name));				
				personn.set(j, person);
			}	
			session.setAttribute("ATT", personn);
			RequestDispatcher rd=req.getRequestDispatcher("afterlogin.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void nameu(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
		try{
			PDAOU pdaou=new PDAOU();
			PersonInfo person=new PersonInfo();
			String name=req.getParameter("cname");
			HttpSession session=req.getSession(true);
			ArrayList personn=(ArrayList)session.getAttribute("ATT");
			PersonInfo per=null;
			person=(PersonInfo)personn.get(0);
			pdaou.nameupd(person.getid(),name);			
			
			Integer i=personn.size();
			for(Integer j=0;j<i;j++)
			{
				person=(PersonInfo)personn.get(j);
				person.setname(name);
				personn.set(j, person);
			}	
			session.setAttribute("ATT", personn);
			RequestDispatcher rd=req.getRequestDispatcher("afterlogin.jsp");
			rd.forward(req,res);			
			}catch(Exception e){System.out.println(e);}
	}
	protected void search(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try{
		PDAO pdao=new PDAO();
		PersonInfo person=new PersonInfo();
		String logid=req.getParameter("logid");
		String password=req.getParameter("pass");
		ArrayList personlist=pdao.retrieve(logid,password);
		HttpSession session=req.getSession(true);
		session.setAttribute("ATT", personlist);
		RequestDispatcher rd=null;
		if(personlist.size()==0){
			req.setAttribute("wrong","AA");
			rd=req.getRequestDispatcher("as.jsp");
		}
		else{
			req.setAttribute("wrong",null);
			session.setAttribute("A",1);
		rd=req.getRequestDispatcher("afterlogin.jsp");
		}
		rd.forward(req,res);
		
		
		}catch(Exception e){System.out.println(e);}
 	}
	
}