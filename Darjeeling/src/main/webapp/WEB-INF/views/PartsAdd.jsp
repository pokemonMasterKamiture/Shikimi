<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部品追加</title>
</head>
<body>
<h1>部品追加</h1>

<table>
<form:form modelAttribute="partsData">
	<tr><td>部品名</td><td><form:input path="name"/></td></tr>
	<tr><td>メーカー</td><td><form:input path="maker"/></td></tr>
	<tr><td>単価</td><td><form:input path="price"/></td></tr>
	<tr><td>在庫数</td><td><form:input path="stock"/></td></tr>
	<tr><td></td><td><input type="submit" value="追加" /></td></tr>
</form:form>
</table>
</body>
</html>