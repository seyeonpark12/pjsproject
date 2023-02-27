<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
    //front에서 보낸 데이타 읽어오기
    String photono=request.getParameter("photono");
	String photostu=request.getParameter("photostu");
	String java=request.getParameter("java");
	String oracle=request.getParameter("oracle");
	String spring=request.getParameter("spring");
	
	//총점 String ==>int
	int tot=Integer.parseInt(java)+Integer.parseInt(oracle)+Integer.parseInt(spring);
	double avg=tot/3.0;
	
	//string형태로 만들어서 front로보내기
	JSONObject ob=new JSONObject();
	ob.put("photo", "../연예인사진/"+photono+".jpg");
	ob.put("photostu", photostu);
	ob.put("tot", tot);
	ob.put("avg", avg);

%>

<%=ob.toString()%>