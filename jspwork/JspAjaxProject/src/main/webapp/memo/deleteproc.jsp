<%@page import="memo.model.MemoDto"%>
<%@page import="memo.model.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	//dao선언
	MemoDao dao=new MemoDao();
	String num=request.getParameter("num");
	
	dao.deleteMemo(num);

%>    