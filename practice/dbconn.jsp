<%@ page contentType="text/html;charset=EUC-KR"%>
<%@page import="javax.naming.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
Connection conn=null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:	XE";

Boolean connect = false;

try{
Class.forName(driver);
conn=DriverManager.getConnection(url,"user01","user01"); //�ڽ��� ���̵�� ��й�ȣ
connect = true;
conn.close();
}catch(Exception e){
connect = false;
e.printStackTrace();
}
%>
<%
if(connect==true){%>
����Ǿ����ϴ�.
<%}else{ %>
����Ŭ ���ῡ �����Ͽ����ϴ�.
<%}%>