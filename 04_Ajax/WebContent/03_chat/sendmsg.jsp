<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ezen.*" %>
<%
DBManager dbms = new DBManager();
dbms.DBOpen();

String msg = request.getParameter("msg");
String sql = "";

sql += "insert into chat (cnote) ";
sql += "value ('" + msg + "')";
dbms.RunSQL(sql);

dbms.DBClose();
%>
메세지 내용: <%= msg %>