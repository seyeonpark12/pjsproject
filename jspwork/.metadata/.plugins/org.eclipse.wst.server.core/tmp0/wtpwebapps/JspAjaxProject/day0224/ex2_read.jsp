<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String code=request.getParameter("code");
	String sang=request.getParameter("sang");
	String price=request.getParameter("price");
	String color=request.getParameter("color");
	
	JSONObject ob=new JSONObject();
	ob.put("code",code);
	ob.put("sang",sang);
	ob.put("price",price);
	ob.put("color",color);
%>

<%=ob.toString()%>