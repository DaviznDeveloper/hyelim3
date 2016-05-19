<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Begin page content -->
<div class="container">
	<div class="page-header">
		<h1>Emp Modified</h1>
	</div>

	<hr>

	<div class="row col-lg-12">
		
		<form action="edit.dvn" method="post">
			<table id="dataList" class="table">
				<thead>
					<tr>
						<th>empno</th>
						<th>ename</th>
						<th>job</th>
						<th>mgr</th>
						<th>hiredate</th>
						<th>sal</th>
						<th>comm</th>
						<th>deptno</th>
					</tr>
				</thead>
	
	
				<tbody>
					<tr>
						<td><input type="text" name="empno" class="form-control" value="${emp.empno}" readonly></td>
						<td><input type="text" name="ename" class="form-control" value="${emp.ename}"></td>
						<td><input type="text" name="job" class="form-control" value="${emp.job}"></td>
						<td><input type="text" name="mgr" class="form-control" value="${emp.mgr}"></td>
						<td><input type="text" name="hiredate2" class="form-control" value="${emp.hiredate}" readonly></td>
						<td><input type="text" name="sal" class="form-control" value="${emp.sal}"></td>
						<td><input type="text" name="comm" class="form-control" value="${emp.comm}"></td>
						<td><input type="text" name="deptno" class="form-control" value="${emp.deptno}"></td>
					</tr>
				</tbody>
				
			</table>
			
			<div class="row">
				<input type="reset" class="btn btn-default" value="취소">
				<input type="submit" class="btn btn-primary" value="수정">
			</div>
			
		</form>
	</div>

</div>
