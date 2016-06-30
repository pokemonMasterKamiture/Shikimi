<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css" />

<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
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
<title>出荷先一覧</title>
</head>
<body>
<%@ include file="../include/sidebar.jsp"%>
<div id=main>
		<h1>出荷先一覧</h1>
		<div class="container">
			<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>名前</th>
						<th>住所</th>
						<th>電話番号</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>牧場</td>
						<td>さいたま</td>
						<td>0120-441-222</td>
						<td><a href="/st/ReceiverUpdate"><input type="button"
								value="詳細"></a></td>
					</tr>
					<tr>
						<td>ペットショップ</td>
						<td>さいたま</td>
						<td>0120-117-117</td>
						<td><a href="/st/ReceiverUpdate"><input type="button"
								value="詳細"></a></td>
					</tr>
					<tr>
						<td>鳥使い</td>
						<td>さいたま</td>
						<td>0120-698-1147</td>
						<td><a href="/st/ReceiverUpdate"><input type="button"
								value="詳細"></a></td>
					</tr>
				</tbody>
			</table>
		</div>
</div>
	<script type="text/javascript">
		// For demo to fit into DataTables site builder...
		$('#example').removeClass('display').addClass(
				'table table-striped table-bordered');
	</script>
</body>
</html>