<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ezen.*" %>
<%
String no = request.getParameter("cno");
if(no == null) no = "0";

DBManager dbms = new DBManager();
dbms.DBOpen();

String sql = "";

sql += "select cno,cdate,cname,cnote ";
sql += "from chat ";
sql += "where cno > " + no + " ";
sql += "order by cno asc ";
dbms.OpenQuery(sql);
while (dbms.GetNext() == true)
{
	String cno = dbms.GetValue("cno");
	String cdate = dbms.GetValue("cdate");
	String cname = dbms.GetValue("cname");
	String cnote = dbms.GetValue("cnote");
	
	//html태그 사용 못하도록 하기
	cnote.replace("<", "&lt;");
	cnote.replace(">", "&gt;");
	
	//out.print("[" + cdate + "] " + cnote + "<br>");
	out.print(cno);
	out.print("<!-- EOF -->"); //구분 용도(임의로 설정 가능)
	out.print("[" + cdate + "] " + cnote + "<br>");
	out.print("<!-- EOR -->"); //구분 용도
}
dbms.CloseQuery();
dbms.DBClose();
%>