<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="memo.model.MemoDto"%>
<%@page import="memo.model.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	//dao
	MemoDao dao=new MemoDao();

	//num
	String num=request.getParameter("num");
	
	//getData
	MemoDto dto=dao.getData(num);
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	JSONObject ob=new JSONObject();
	
	ob.put("num",dto.getNum());
	ob.put("writer",dto.getWriter());
	ob.put("content",dto.getContent());
	ob.put("avata",dto.getAvata());
	ob.put("writeday",sdf.format(dto.getWriteday()));
%>

<%=ob.toString()%>