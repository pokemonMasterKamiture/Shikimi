<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>top画面</title>
</head>
<body>
	<h1>top画面</h1>
	<table>
	<tr><td><a href="/st/OrderAdd"><input type="button" value="受注登録"></a></td>
	<td><a href="/st/OrdersList"><input type="button" value="受注一覧"></a></td></tr>
	<tr><td><a href="/st/CustomerAdd"><input type="button" value="顧客登録"></a></td>
	<td><a href="/st/ProductAdd"><input type="button" value="商品登録"></a></td></tr>
	<tr><td><a href="/st/PartsAdd"><input type="button" value="部品登録"></a></td></tr>
	</table>
</body>
</html>