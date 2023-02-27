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
</head>
<body>
	<div style="margin: 50px 50px; border: 1px solid gray; width: 350px; text-align: center;">
		<h3>student(json)읽어오기</h3>
		<button type="button" class="btn btn-success" id="btn1">studenttojson읽기</button>
		<br>
		<h3>food(xml)읽어오기</h3>
		<button type="button" class="btn btn-warning" id="btn2" style="margin-bottom: 20px">foodtoxml읽기</button>
	</div>
	
	<div id="show" style="margin: 50px 50px"></div>
	
	<script type="text/javascript">
		$("#btn1").click(function(){
			
			$.ajax({
				
				type: "get",
				url: "studenttojson.jsp",
				dataType: "json",
				success:function(res){
					
					var s="";
					$.each(res,function(i,stu){
						
						s += "<div class='alert alert-info' style='width:400px; text-align: center;'>";
						s += "Index: "+i+"<br>";
						s += "No: "+stu.num+"<br>";
						s += "학생이름: "+stu.stuname+"<br>";
						s += "<img src='"+stu.stuphoto+"' width='100'><br>";
						s += "Java점수: "+stu.java+"<br>";
						s += "Ajax점수: "+stu.ajax;
						s += "</div>";
					});
					$("#show").html(s);
				}
			});
		});
		
		
		$("#btn2").click(function(){
			
			$.ajax({
				
				type: "get",
				url: "foodtoxml.jsp",
				dataType: "xml",
				success:function(res){
					
					var s="";
					
					$(res).find("food").each(function(i,ele){
						
						var food=$(ele);
						
						s += "<div class='alert alert-info' style='width:400px; text-align: center;'>";
						s += "Index: "+i+"<br>";
						s += "No: "+food.attr("num")+"<br>";
						s += "음식이름: "+food.find("foodname").text()+"<br>";
						s += "<img src='"+food.find("foodphoto").text()+"' width='100'> <br>";
						s += "가격: "+food.find("price").text()+"원 <br>";
						s += "수량: "+food.find("cnt").text()+"개";
						s += "</div>"
					});
					
					$("#show").html(s);
				}
				
			});
		});
		
		
		
	</script>
</body>
</html>