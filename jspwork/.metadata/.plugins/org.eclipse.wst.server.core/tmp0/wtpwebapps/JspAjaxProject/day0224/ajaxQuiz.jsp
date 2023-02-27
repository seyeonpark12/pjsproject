<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div.box{
		width:50px;
		height:50px;
		border: 1px solid gray;
		border-radius: 100px;
		float: left;
	}
</style>
<script type="text/javascript">
	$(function(){
		
		$("#btn1").click(function(){
			
			var s = "<img src='../image/10.png' width='300'>";
			$("#show").html(s);
		})
		
		$("#btn2").click(function(res){
			
			$.ajax({
			
				type:"get",
				url:"jshopToJson.jsp",
				dataType:"json",
				success:function(data){
					
					var s="";
					
					$.each(data,function(i,elt){
						
						s += "<div class='alert alert-info' style='width:200px; text-aling: center;'>";
						s += "index: "+i+"<br>";
						s += "num: "+elt.num+"<br>";
						s += "sangpum: "+elt.sangpum+"<br>";
						s += "color: "+elt.color+"<br>"+
						 "<div class='box' style='background-color:"+elt.color+";'></div>";
						var img=elt.imagename;
						s += "<img src='"+img+"' width='50'>";
						s += "</div>"
					});
					$("#show").html(s);
				}
			});
			
		});
		
		
		$("#btn3").click(function(){
			
			$.ajax({
				
				type:"get",
				url:"sboardToJson.jsp",
				dataType:"json",
				success:function(res){
					
					var s="<table class='table table-bordered' style='width:900px'>";
					s+="<caption><b>simpleboard 읽어오기</b></caption>";
					s+="<tr bgcolor='lightblue'>";
					s+="<th>번호</th><th>작성자</th><th>제목</th><th>내용</th><th>이미지</th><th>비밀번호</th><th>조회수</th><th>작성날짜</th>";
					s+="</tr>";
					
					$.each(res,function(i,elt){
						
						s+="<tr aling='center'>";
						s+="<td>"+elt.num+"</td>";
						s+="<td>"+elt.writer+"</td>";
						s+="<td>"+elt.subject+"</td>";
						s+="<td>"+elt.content+"</td>";
						s+="<td><img src='../image2/"+elt.imgname+"' width='100'></td>";
						s+="<td>"+elt.pass+"</td>";
						s+="<td>"+elt.readcount+"</td>";
						s+="<td>"+elt.writeday+"</td>";
						s+="</tr>";
						
						
					});
					s+="</table>";
					$("#show").html(s);
					
				}
			});
		});
		
		
	});
</script>
</head>
<body>
	<button type="button" class="btn btn-info" id="btn1">home</button>
	<button type="button" class="btn btn-danger" id="btn2">Jshop</button>
	<button type="button" class="btn btn-success" id="btn3">Simpleboard</button>
	
	<div id="show"></div>
</body>
</html>