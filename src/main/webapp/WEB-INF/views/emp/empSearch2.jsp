<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Begin page content -->
<div class="container">
	<div class="page-header">
		<h1>Emp Search</h1>
	</div>

	<h3>Single Search</h3>
	<form action="empSearchAction.dvn" method="post" class="form-inline">
		<div class="form-group">
			<select name="column" class="form-control">
				<option value="empno">empno</option>
				<option value="ename">ename</option>
				<option value="job">job</option>
				<option value="mgr">mgr</option>
				<option value="sal">sal</option>
				<option value="comm">comm</option>
				<option value="deptno">deptno</option>
			</select> <input type="text" name="keyvalue" class="form-control"> <input
				type="submit" class="btn btn-info form-control" value="검색">
		</div>
	</form>

	<br>

	<h3>Multi Search</h3>
	<form action="empSearchAction2.dvn" method="post" class="form-inline">

		<div class="form-group">
			<label class="checkbox-inline">
				<input type="checkbox" name="empno" value="empno">empno
			</label>
			<label class="checkbox-inline"> 
				<input type="checkbox" name="ename" value="ename">ename
			</label> 
			<label class="checkbox-inline"> 
				<input type="checkbox" name="job" value="job">job
			</label> 
			
			<label class="checkbox-inline"> 
				<input type="checkbox" name="sal" value="sal">sal
			</label> 
			<label class="checkbox-inline"> 
				<input type="checkbox" name="comm" value="comm">comm
			</label> 
			<label class="checkbox-inline"> 
				<input type="checkbox" name="deptno" value="deptno">deptno
			</label>
		</div>


		<br> <br>


		<div class="form-group">
			검색어: <input type="text" name="keyvalue" class="form-control">
			<input type="submit" value="검색" class="btn btn-info form-control">
		</div>
	</form>

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
					<td><a href="" class="btn btn-info">수정</a></td>
					<td><a href="" class="btn btn-danger">삭제</a></td>
				</tr>
				 </c:forEach> 
			</tbody>
		</table>
	</div>

</div>
