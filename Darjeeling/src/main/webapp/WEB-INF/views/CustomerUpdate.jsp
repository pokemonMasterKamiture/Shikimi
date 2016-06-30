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
<title>顧客更新</title>

</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>顧客更新</h1>

		<table>
			<form:form modelAttribute="customerData">
				<tr>
					<td>名前</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>住所</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>電話番号</td>
					<td><form:input path="tel" /></td>
				</tr>
				<tr>
					<td>取引限界額</td>
					<td><form:input path="love" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="更新" /></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>