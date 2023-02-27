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
	}
</style>
</head>
<script type="text/javascript">
	$(function(){
		
		$("#btn1").click(function(){
			
			$.ajax({
			
				type:"get",
				url:"jshopToJson.jsp",
				dataType:"json",
				success:function(data){
					
					var s="<table class='table table-bordered' style='width:700px'>";
					s+="<caption><b>json jshop읽어오기</b></caption>";
					s+="<tr bgcolor='lightyellow'>";
					s+="<th>번호</th><th>상품명</th><th>색상</th><th>가격</th><th>상품이미지</th>";
					s+="</tr>";
					
					$.each(data,function(i,elt){
						
						s+="<tr align='center'>";
						s+="<td>"+elt.num+"</td>";
						s+="<td>"+elt.sangpum+"</td>";
						s+="<td>"+elt.color+"<br>"+
						"<div class='box' style='background-color:"+elt.color+";'></td>";
						s+="<td>"+elt.price+"</td>";
						var img=elt.imagename;
						s+="<td><img src='"+img+"' width='50'></td>";
						s+="</tr>";
					});
					
					s+="</table>";
					$("#show").html(s);
				}
			});
			
		});
	});
</script>
<body>
	<button type="button" class="btn btn-info" id="btn1">Jshop DB읽어오기</button>
	
	<div id="show"></div>
</body>
</html>