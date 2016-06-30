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
<title>商品追加</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>商品追加</h1>

		<table>
			<form:form modelAttribute="productData">
				<tr>
					<td>商品名</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>価格</td>
					<td><form:input path="price" /></td>
				</tr>
				<!-- 材料と必要個数、工程項目はたくさん作るか、自動生成してください。 -->
				<tr>
					<td>部品</td>
					<td><form:select path="reqparts">
							<option>かしら</option>
							<option>ねぎま</option>
							<option>つくね</option>
						</form:select></td>
				</tr>
				<tr>
					<td>必要個数</td>
					<td><form:input path="reqnum" /></td>
				</tr>
				<tr>
					<td>工程項目</td>
					<td><form:input path="process" /></td>
				</tr>
				<tr>
					<td>作成期間</td>
					<td><form:input path="tock" /></td>
				</tr>
				<tr>
					<td>純利益</td>
					<td><form:input path="income" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="追加" /></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>