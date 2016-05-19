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
						type : "POST",	//$.get() , $.post()
						dataType:"json",	//html(txt) > selector.load
										//script > $.getScript()
										//json	 > $.getJSON()
										//xml
						url:"/kosta/emp/empModified.json",
						//data:{id:$('#id'),val()},
						success:function(data){
							//가공작업($.each())
							$('#treeData').append("<tr><th>Num</th><th>Writer</th><th>title</th><th>content</th></tr>");
							$.each(data,function(){
								//function(index, item)
								//this 받아서 처리
								//console.log(this)
								//$(this) => {객체 한건}
								$('#treeData').append("<tr><td>" + this.id + "</td>"
														+ "<td>" + this.name + "</td>"
														+ "<td>" + this.title + "</td>"
														+ "<td>" + this.content+"</td></tr>");
							});
						},
						error:function(xhr){}
					}		
			);
		});

	</script>
</head>
<body>
	<input type="button" id="btn">GG
</body>

</html>