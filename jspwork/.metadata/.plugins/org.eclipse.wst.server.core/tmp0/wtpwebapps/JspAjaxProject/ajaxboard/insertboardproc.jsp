<%@page import="ajaxboard.model.AjaxBoardDao"%>
<%@page import="ajaxboard.model.AjaxBoardDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	
	AjaxBoardDao dao=new AjaxBoardDao();

	request.setCharacterEncoding("utf-8");		
	
	String writer=request.getParameter("writer");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String avata=request.getParameter("avata");
	
	AjaxBoardDto dto=new AjaxBoardDto();
	
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setAvata(avata);
	
	dao.insertboard(dto);
%>    