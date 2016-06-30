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
<title>進捗更新</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>進捗更新</h1>

		<table>
			<form:form modelAttribute="orderData">
	ここに工程項目をずらっとならべる。
	<%-- <form:checkboxes items="" path=""/> --%>

				<tr>
					<td></td>
					<td><input type="submit" value="更新" /></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>