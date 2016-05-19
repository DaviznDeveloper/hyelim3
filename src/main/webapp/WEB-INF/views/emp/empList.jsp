<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Begin page content -->
<div class="container">
	<div class="page-header">
		<h1>Emp List</h1>
	</div>

	<hr>

	<div class="row col-lg-12">
		<table id="dataList" class="table">
			<thead>
				<tr>
					<th>no</th>
					<th>empno</th>
					<th>ename</th>
					<th>job</th>
					<th>mgr</th>
					<th>sal</th>
					<th>deptno</th>
					<th>modified</th>
					<th>delete</th>
				</tr>
			</thead>


			<tbody>
				 <c:forEach var="emp" items="${list}" varStatus="index"> 
				<tr>
					<td>${index.count}</td>
					<td>${emp.empno}</td>
					<td>${emp.ename}</td>
					<td>${emp.job}</td>
					<td>${emp.mgr}</td>
					<td>${emp.sal}</td>
					<td>${emp.deptno}</td>
					<td><a href="empModified.dvn?empno=${emp.empno}" class="btn btn-info">수정</a></td>
					<td><a href="empDelete.dvn?empno=${emp.empno}" class="btn btn-danger">삭제</a></td>
				</tr>
				 </c:forEach> 
			</tbody>
		</table>
	</div>

</div>
