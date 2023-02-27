<%@page import="memo.model.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	MemoDao dao=new MemoDao();

	//엔코딩
	request.setCharacterEncoding("utf-8");
%>