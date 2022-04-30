<%@page import="project.ConnectionProvider"%>
<%@page import="java.io.*"%> 
<%@page import="java.sql.*"%>

<%
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		String q1 = "create table users(name varchar2(100),email varchar2(100) primary key,mobileNumber int,securityQuestion varchar2(200),answer varchar2(200),password varchar2(100),address varchar2(500),city varchar2(100),state varchar2(100),country varchar2(100))";
		String q2 = "create table product(id int, name varchar2(50),category varchar2(50),price int,active varchar2(10))";
                System.out.println(q1);
                System.out.println(q2);
		//st.execute(q1);
                st.execute(q2);
		System.out.print("Table created");
		con.close();
		} catch (Exception e) {
		System.out.print(e);
	}
%>