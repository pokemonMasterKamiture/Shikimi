<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品追加</title>
</head>
<body>
<h1>商品追加</h1>

<table>
<form:form modelAttribute="prod">
	<tr><td>名前</td><td><form:input path=""/></td></tr>
	<tr><td>単価</td><td><form:input path=""/></td></tr>
	<!-- 材料と必要個数はたくさん作るか、自動生成してください。 -->
	<tr><td>材料</td>
				<td><form:select path="">
						<option>かしら</option>
						<option>ねぎま</option>
						<option>つくね</option>
					</form:select></td></tr>
	<tr><td>必要個数</td><td><form:input path=""/></td></tr>
	<tr><td>純利益</td><td><form:input path=""/></td></tr>
	<tr><td></td><td><input type="submit" value="追加" /></td></tr>
</form:form>
</table>
</body>
</html>