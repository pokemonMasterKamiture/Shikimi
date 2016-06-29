<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>受注追加</title>
</head>
<body>
	<h1>受注追加</h1>
	<table>
		<form:form modelAttribute="orderData">
			<tr>
				<td>発注元</td>
				<td><form:select path="cust">
						<option>ペットショップ</option>
						<option>鳥使い</option>
						<option>投資家</option>
					</form:select></td>
			</tr>
			<tr>
				<td>出荷先</td>
				<td><form:select path="receiver">
						<option>ペットショップ：ここ店</option>
						<option>ペットショップ：あそこ店</option>
						<option>鳥使い</option>
						<option>牧場</option>
					</form:select></td>
			</tr>
			<tr>
				<td>表品名</td>
				<td><form:select path="product">
						<option>とり</option>
						<option>にわとり</option>
						<option>ひよこ</option>
					</form:select></td>
			</tr>
			<tr>
				<td>注文数</td>
				<td><form:input path="total" /></td>
			</tr>


			<tr>
				<td>期限</td>
				<td><form:select path="deadlineMonth">
						<option>１月</option>
						<option>２月</option>
						<option>３月</option>
						<option>４月</option>
						<option>５月</option>
						<option>６月</option>
						<option>７月</option>
						<option>８月</option>
						<option>９月</option>
						<option>１０月</option>
						<option>１１月</option>
						<option>１２月</option>

					</form:select> <form:select path="deadlineDay">
						<option>１日</option>
						<option>２日</option>
						<option>３日</option>
						<option>４日</option>
						<option>５日</option>
						<option>６日</option>
						<option>７日</option>
						<option>８日</option>
						<option>９日</option>
						<option>１０日</option>
						<option>１１日</option>
						<option>１２日</option>
						<option>１３日</option>
						<option>１４日</option>
						<option>１５日</option>
						<option>１６日</option>
						<option>１７日</option>
						<option>１８日</option>
						<option>１９日</option>
						<option>２０日</option>
						<option>２１日</option>
						<option>２２日</option>
						<option>２３日</option>
						<option>２４日</option>
						<option>２５日</option>
						<option>２６日</option>
						<option>２７日</option>
						<option>２８日</option>
						<option>２９日</option>
						<option>３０日</option>
						<option>３１日</option>
					</form:select> <form:select path="deadlineTime">
						<option>１時</option>
						<option>２時</option>
						<option>３時</option>
						<option>４時</option>
						<option>５時</option>
						<option>６時</option>
						<option>７時</option>
						<option>８時</option>
						<option>９時</option>
						<option>１０時</option>
						<option>１１時</option>
						<option>１２時</option>
						<option>１３時</option>
						<option>１４時</option>
						<option>１５時</option>
						<option>１６時</option>
						<option>１７時</option>
						<option>１８時</option>
						<option>１９時</option>
						<option>２０時</option>
						<option>２１時</option>
						<option>２２時</option>
						<option>２３時</option>
						<option>２４時</option>

					</form:select> <form:select path="deadlineMinute">
						<option>０分</option>
						<option>１分</option>
						<option>２分</option>
						<option>３分</option>
						<option>４分</option>
						<option>５分</option>
						<option>６分</option>
						<option>７分</option>
						<option>８分</option>
						<option>９分</option>
						<option>１０分</option>
						<option>１１分</option>
						<option>１２分</option>
						<option>１３分</option>
						<option>１４分</option>
						<option>１５分</option>
						<option>１６分</option>
						<option>１７分</option>
						<option>１８分</option>
						<option>１９分</option>
						<option>２０分</option>
						<option>２１分</option>
						<option>２２分</option>
						<option>２３分</option>
						<option>２４分</option>
						<option>２５分</option>
						<option>２６分</option>
						<option>２７分</option>
						<option>２８分</option>
						<option>２９分</option>
						<option>３０分</option>
						<option>３１分</option>
						<option>３２分</option>
						<option>３３分</option>
						<option>３４分</option>
						<option>３５分</option>
						<option>３６分</option>
						<option>３７分</option>
						<option>３８分</option>
						<option>３９分</option>
						<option>４０分</option>
						<option>４１分</option>
						<option>４２分</option>
						<option>４３分</option>
						<option>４４分</option>
						<option>４５分</option>
						<option>４６分</option>
						<option>４７分</option>
						<option>４８分</option>
						<option>４９分</option>
						<option>５０分</option>
						<option>５１分</option>
						<option>５２分</option>
						<option>５３分</option>
						<option>５４分</option>
						<option>５５分</option>
						<option>５６分</option>
						<option>５７分</option>
						<option>５８分</option>
						<option>５９分</option>

					</form:select></td>

			</tr>


			<tr>
				<td></td>
				<td><input type="submit" value="追加" /></td>
				<td><font color="red"><strong>在庫ないよ</strong></font></td>

			</tr>
		</form:form>
	</table>
</body>
</html>