<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
	DbConnect db=new DbConnect();
	
	Connection conn=db.getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from student order by num";
	
	String s="[";
	
	try{
		
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			
			String num=rs.getString("num");
			String stuname=rs.getString("stuname");
			String stuphoto=rs.getString("stuphoto");
			int java=rs.getInt("java");
			int ajax=rs.getInt("ajax");
			
			s += "{";
			s += "\"num\": "+num+",\"stuname\": \""+stuname+"\",\"stuphoto\": \""+stuphoto+"\",\"java\": "+java+",\"ajax\": "+ajax;
			s += "},";
		}
		
		//마지막 컴마 제거
		s=s.substring(0,s.length()-1);
		s+="]";
				
	}catch(SQLException e){
		
		
	}finally{
		
		db.dbClose(rs,pstmt, conn);
	}	
%>

<%=s %>
