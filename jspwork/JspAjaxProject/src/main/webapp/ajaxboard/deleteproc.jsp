<%@page import="ajaxboard.model.AjaxBoardDto"%>
<%@page import="ajaxboard.model.AjaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String num=request.getParameter("num");

	AjaxBoardDao dao=new AjaxBoardDao();
	
	dao.deleteBoard(num);
%>    