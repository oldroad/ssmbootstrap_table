<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shiro-role-list</title>
<link rel="icon" href="favicon.ico">
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<link
	rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
	});
</script>	
</head>
<body>
	<div class="container-fluid">
		<table class="table">
	      <caption>角色列表</caption>
	      <thead>
	        <tr>
	          <th></th>
	          <th>ID</th>
	          <th>Name</th>
	          <th>DESC</th>
	        </tr>
	      </thead>
	      <tbody>
	        <c:forEach var="item" items="${roles}">
				<tr>
		          <td>
		          	<label>
				      <input name="roleid" value="${item.id}" type="checkbox"/> &emsp;<span class="glyphicon glyphicon-ok"></span>
				    </label>
		          </td>
		          <td>${item.id}</td>
		          <td>${item.name}</td>
		          <td>${item.description}</td>
		        </tr>
			</c:forEach>
	      </tbody>
	    </table>
	</div>
</body>
</html>