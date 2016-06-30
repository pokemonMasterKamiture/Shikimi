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
<title>出荷確認</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		本当に出荷する？
		<%-- <form:form modelAttribute=""></form:form> --%>
		<form action="/st/ShipmentComplete">
			<input type="submit" value="出荷" />
		</form>
	</div>
</body>
</html>