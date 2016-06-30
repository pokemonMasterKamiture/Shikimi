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
<title>top画面</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>top画面</h1>
		<table>
			<tr>
				<td><a href="/st/OrderAdd"><input type="button"
						value="受注登録"></a></td>
				<td><a href="/st/OrderList"><input type="button"
						value="受注一覧"></a></td>
			</tr>
			<tr>
				<td><a href="/st/CustomerAdd"><input type="button"
						value="顧客登録"></a></td>
				<td><a href="/st/ProductAdd"><input type="button"
						value="商品登録"></a></td>
			</tr>
			<tr>
				<td><a href="/st/PartsAdd"><input type="button"
						value="部品登録"></a></td>
			</tr>
		</table>
	</div>
</body>
</html>