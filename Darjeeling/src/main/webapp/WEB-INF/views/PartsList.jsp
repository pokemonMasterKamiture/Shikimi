<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
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
<title>部品一覧</title>
</head>
<body>
	<%@ include file="../include/sidebar.jsp"%>
	<div id="main">
		<h1>部品一覧</h1>
		<div class="container">
			<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>部品名</th>
						<th>メーカー</th>
						<th>単価</th>
						<th>在庫数</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>かわ</td>
						<td>（株）さいたま</td>
						<td>10円/１00個</td>
						<td>2000個</td>
						<td><a href="/st/PartsUpdate"><input type="button"
								value="更新"></a></td>
					</tr>
					<tr>
						<td>ねぎま</td>
						<td>（株）さいたま</td>
						<td>8円/１00個</td>
						<td>1500個</td>
						<td><a href="/st/PartsUpdate"><input type="button"
								value="更新"></a></td>
					</tr>
					<tr>
						<td>つくね</td>
						<td>（株）さいたま</td>
						<td>10円/１00個</td>
						<td>800個</td>
						<td><a href="/st/PartsUpdate"><input type="button"
								value="更新"></a></td>
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