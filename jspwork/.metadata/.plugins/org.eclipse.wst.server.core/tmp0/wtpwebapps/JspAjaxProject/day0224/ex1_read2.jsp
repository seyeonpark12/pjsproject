<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String name=request.getParameter("name");
	String hp=request.getParameter("hp");
	
	System.out.println("name: "+name);
	System.out.println("hp: "+hp);
	
%>    

<name><%=name%></name>