<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#example').DataTable({
			"language" : {
				"emptyTable" : "データが登録されていません。",
				"info" : "_TOTAL_ 件中 _START_ 件から _END_ 件までを表示",
				"infoEmpty" : "",
				"infoFiltered" : "(_MAX_ 件からの絞り込み表示)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "1ページあたりの表示件数: _MENU_",
				"loadingRecords" : "ロード中",
				"processing" : "処理中...",
				"search" : "検索",
				"zeroRecords" : "該当するデータが見つかりませんでした。",
				"paginate" : {
					"first" : "先頭",
					"previous" : "前へ",
					"next" : "次へ",
					"last" : "末尾"
				}
			}
		});
	});
</script>
<title>受注一覧</title>
</head>
<body>
<h1>受注一覧</h1>
	<div class="container">
		<table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>商品名</th>
					<th>発注数</th>
					<th>発注元</th>
					<th>出荷先</th>
					<th>期限</th>
					<th>進捗状況</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr><td>鳥</td><td>1羽</td><td>鳥使い</td><td>鳥使い</td><td>06/30</td><td>50%</td>
				<td><a href="/st/ProgressList"><input type="button" value="詳細"></a></td></tr>
				<tr><td>ひよこ</td><td>1000羽</td><td>投資家</td><td>牧場</td><td>07/07</td><td>80%</td>
				<td><a href="/st/ProgressList"><input type="button" value="詳細"></a></td></tr>
				<tr><td>鶏</td><td>10羽</td><td>ペットショップ</td><td>ペットショップ　そこ店</td><td>07/01</td>
				<td><a href="/st/Shipment"><input type="button" value="出荷"></a></td>
				<td><a href="/st/ProgressList"><input type="button" value="詳細"></a></td></tr>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		// For demo to fit into DataTables site builder...
		$('#example').removeClass('display').addClass(
				'table table-striped table-bordered');
	</script>
</body>
</html>