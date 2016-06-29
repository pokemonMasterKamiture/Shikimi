<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品更新</title>
</head>
<body>
<h1>商品更新</h1>
<table>
<form:form modelAttribute="pard">
	<tr><td>商品名</td><td><form:input path=""/></td></tr>
	<tr><td>必要パーツ</td><td><form:select path=""/></td><td><form:input path=""/>個</td></tr>
	<tr><td>作成期間</td><td><form:input path=""/></td></tr>
	<tr><td>販売価格</td><td><form:input path=""/></td></tr>
	<tr><td></td><td><input type="submit" value="追加" /></td></tr>
</form:form>
</table>
</body>
</html>