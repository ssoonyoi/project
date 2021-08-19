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
conn=DriverManager.getConnection(url,"user01","user01"); //자신의 아이디와 비밀번호
connect = true;
conn.close();
}catch(Exception e){
connect = false;
e.printStackTrace();
}
%>
<%
if(connect==true){%>
연결되었습니다.
<%}else{ %>
오라클 연결에 실패하였습니다.
<%}%>