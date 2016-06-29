<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>進捗更新</title>
</head>
<body>
<h1>進捗更新</h1>

<table>
<form:form modelAttribute="ordd">
	<tr><td>名前</td><td><form:input path=""/></td></tr>
	<tr><td>住所</td><td><form:input path=""/></td></tr>
	<tr><td>電話番号</td><td><form:input path=""/></td></tr>
	<tr><td>取引限界額</td><td><form:input path=""/></td></tr>
	<tr><td></td><td><input type="submit" value="追加" /></td></tr>
</form:form>
</table>
</body>
</html>