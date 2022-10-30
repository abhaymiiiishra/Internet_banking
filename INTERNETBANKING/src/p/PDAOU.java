package p;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.text.*;
public class PDAOU implements Serializable{
	
	private Connection con;
	public PDAOU()
	{
		estabcon();
	}
	private void estabcon()
	{
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		
	}catch(Exception e){ }
	}
	/*
	 * 
	mysql> create table accd(cac integer(14),bal float(10,2),bcode integer(5));
	 create table widep(cac integer(14),ddate date,dtime time,type varchar(1),
amount float(10,2)
	 */
	public ArrayList transfer(Integer nname,Float name,ArrayList a,Integer rec) throws SQLException
	{
		
		try{
			String sql="update accd set bal=bal-"+name+" where cac=" + nname;
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        Date date = new Date();
	        String dat=dateFormat.format(date);
	        dateFormat = new SimpleDateFormat("HH:mm:ss");     
	        String tim=dateFormat.format(date);
			sql="insert into widep values("+nname+",'"+dat+"','"+tim+"','W',"+name+")";
			stmt=con.createStatement();
		 	stmt.executeUpdate(sql);
		 	sql="update accd set bal=bal+"+name+" where cac=" + rec;
			stmt=con.createStatement();
			stmt.executeUpdate(sql);
			dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        date = new Date();
	        dat=dateFormat.format(date);
	        dateFormat = new SimpleDateFormat("HH:mm:ss");     
	        tim=dateFormat.format(date);
			sql="insert into widep values("+rec+",'"+dat+"','"+tim+"','D',"+name+")";
			stmt=con.createStatement();
		 	stmt.executeUpdate(sql);
		 	}	catch(Exception e){
			System.out.println(e);
		}
		finally{
				if(con!=null)
				{
					con.close();
				}
		}
		return a;
		
	}
	public ArrayList uppay(Integer nname,Float name,ArrayList a) throws SQLException
	{
		
		try{
			String sql="update accd set bal=bal-"+name+" where cac=" + nname;
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        Date date = new Date();
	        String dat=dateFormat.format(date);
	        dateFormat = new SimpleDateFormat("HH:mm:ss");     
	        String tim=dateFormat.format(date);
			sql="insert into widep values("+nname+",'"+dat+"','"+tim+"','W',"+name+")";
			stmt=con.createStatement();
		 	stmt.executeUpdate(sql);
		}	catch(Exception e){
			System.out.println(e);
		}
		finally{
				if(con!=null)
				{
					con.close();
				}
		}
		return a;
		
	}
	public void emailupd(String nname,String name) throws SQLException
	{
		
		try{
			String sql="update custp set pass='"+name+"' where cid=" + nname;
			 Statement stmt=con.createStatement();
			 stmt.executeUpdate(sql);		
		}	catch(Exception e){
			System.out.println(e);
		}
		finally{
				if(con!=null)
				{
					con.close();
				}
		}
		
	}
	public void nameupd(String nname,String name) throws SQLException
	{
		
		try{
			 String sql="update custd set cname='"+name+"' where cid=" + nname;
			 Statement stmt=con.createStatement();
			 stmt.executeUpdate(sql);		
		}	catch(Exception e){
			System.out.println(e);
		}
		finally{
				if(con!=null)
				{
					con.close();
				}
		}
		
	}
	public void mobileupd(String nname,Long name) throws SQLException
	{
		
		try{
			 String sql="update custd set cmobile="+name+" where cid=" + nname;
			 Statement stmt=con.createStatement();
			 stmt.executeUpdate(sql);		
		}	catch(Exception e){
			System.out.println(e);
		}
		finally{
				if(con!=null)
				{
					con.close();
				}
		}
		
	}

}
