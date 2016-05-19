<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>   
 
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8">
	      <meta http-equiv="X-UA-Compatible" content="IE=edge">
	      <meta name="viewport" content="width=device-width, initial-scale=1">
	      
	      <!-- Bootstrap core CSS -->
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	      <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />

		  <!-- Custom CSS -->
		  <link href="css/davizn.css" rel="stylesheet">
		
		  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	      <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
	      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	      <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	      
	      <!-- Test용 css -->
	      <style type="text/css">
	         
	         .dataTable {
	            padding: 5px;
	            border: 1px solid gray;
	            overflow:auto;
	            white-space:nowrap;
	         }
	         
	         .row {
	            margin-top: 10px;
	            margin-bottom: 10px;
	         }
	         
	         #userNo-box, #userId-box {
	            padding-left: 0px;
	         }
	         
	         #tbl {
	            border-collapse: collapse;
	         }
	      
	         #tbl tr td {
	            width: 100px;
	         }
	      </style>
	      
	</head>

	<body>
		<!-- Header  영역  -->
		<tiles:insertAttribute name="header" />
		<!-- Main 영역 -->
		<div id="main">
			<div class="top-wrapper clear">
				<tiles:insertAttribute name="content" />
			</div>	
		</div>
		<!-- Footer  영역  -->
		<tiles:insertAttribute name="footer" />	
	</body>
</html>