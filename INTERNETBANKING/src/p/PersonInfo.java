package p;
import java.io.Serializable;


public class PersonInfo implements Serializable {

	private String cid,pass,cname,cadd,dadate,type;
	private Integer cac,bcode;
	private Float amount,bal;
	private Long cmobile;
	//private Integer cac;
	public PersonInfo()
	{
		cid="";
		pass="";
		cadd="";
		cac=0;
		cmobile=0L;
		bcode=0;
		bal=0F;
		dadate="";
		type="";
		amount=0F;
		cname="";
	}
	public void setall(String str,Integer str2,String str4,Float str6,Integer str7,String str8,String str9,Float str10)
	{
		cid=str;
		cac=str2;
		cadd=str4;
		bal=str6;
		bcode=str7;
		dadate=str8;
		type=str9;
		amount=str10;
	}
	public void setmobile(Long str)
	{
		cmobile=str;
	}
	public void setpass(String str)
	{
		pass=str;
	}
	public void setname(String str)
	{
		cname=str;
	}
	public String getid()
	{
		return cid;
	}
	public String getpass()
	{
		return pass;
	}
	public Integer getcac()
	{
		return cac;
	}
	public String getcname()
	{
		return cname;
	}
	public String getcadd()
	{
		return cadd;
	}
	public Long getcmobile()
	{
		return cmobile;
	}
	public Float getbal()
	{
		return bal;
	}
	public Integer getbcode()
	{
		return bcode;
	}
	public String getdadate()
	{
		return dadate;
	}
	public String gettype()
	{
		return type;
	}
	public Float getamount()
	{
		return amount;
	}
}
/*
 create table custp(cid varchar(10),pass varchar(10),primary key(cid));
create table cust(cac integer(14),cid varchar(10),primary key(cac),constraint r foreign key(cid) references custp(cid));
mysql> create table custd(cid varchar(10),cname varchar(10),cadd varchar(30),cmo
bile bigint,constraint h foreign key(cid) references custp(cid));
mysql> create table branchd(bcode integer(5),bname varchar(10), primary key(bcod
e));
mysql> create table accd(cac integer(14),bal float(10,2),bcode integer(5),constr
aint i foreign key(cac) references cust(cac),constraint l foreign key(bcode) ref
erences branchd(bcode));
mysql> create table widep(cac integer(14),ddate date,dtime time,type varchar(1),
amount float(10,2),constraint qwe foreign key(cac) references cust(cac));
 
 */
