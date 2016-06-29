<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出荷先更新</title>
</head>
<body>
<h1>出荷先更新</h1>

<table>
<form:form modelAttribute="recd">
	<tr><td>名前</td><td><form:input path="name"/></td></tr>
	<tr><td>住所</td><td><form:input path="address"/></td></tr>
	<tr><td>電話番号</td><td><form:input path="tel"/></td></tr>
	<tr><td>被信頼度（想定）</td><td><form:input path="love"/></td></tr>
	<tr><td></td><td><input type="submit" value="追加" /></td></tr>
</form:form>
</table>
</body>
</body>
</html>