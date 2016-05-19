<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		$(function(){
			$.ajax(
					{
						type : "POST",	
						dataType:"json",	
						url:"/kosta/emp/empModified.json",
						success:function(data){
							$.each(data,function(){
							
								//console.log(this)
								
								
							});
						},
						error:function(xhr){}
					}		
			);
		});

	</script>
</head>
<body>
	<input type="button" id="btn" value="GGG">GGwonsuk
</body>

</html>