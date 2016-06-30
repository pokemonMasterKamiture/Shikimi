<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<title>部品更新</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>部品更新</h1>

		<table>
			<form:form modelAttribute="partsData">
				<tr>
					<td>部品名</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>メーカー</td>
					<td><form:input path="maker" /></td>
				</tr>
				<tr>
					<td>単価</td>
					<td><form:input path="price" /></td>
				</tr>
				<tr>
					<td>在庫数</td>
					<td><form:input path="stock" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="追加" /></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>