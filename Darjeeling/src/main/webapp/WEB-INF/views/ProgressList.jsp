<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"
	type="text/javascript"></script>
<script src="resources/js/jquery.fn.gantt.js"></script>

<style type="text/css">
body {
	font-family: Helvetica, Arial, sans-serif;
	font-size: 13px;
	padding: 0 0 50px 0;
}

.contain {
	width: 100%;
	margin: 0 auto;
}
/* /* Bootstrap 3.x re-reset */
.fn-gantt *, .fn-gantt *:after, .fn-gantt *:before {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
} */
</style>
</head>
<body bgcolor="#e2e2e2">
	<%@ include file="../include/sidebar.jsp"%>
	<div class="main">

		<h1>進捗詳細</h1>

		<p></p>
		<div class="contain">
			<div class="gantt"></div>
		</div>
	</div>

	<script>
		$(function() {
			"use strict";
			$(".gantt").gantt(
					{
						source : [ {
							name : "肉洗浄",
							desc : "水洗い",
							values : [ {
								from : "/Date(2016,06,28)/",
								to : "/Date(2016,06,29)/",
								label : "水洗い",
								customClass : "ganttRed"
							} ]
						}, {
							name : " ",
							desc : "洗剤洗い",
							values : [ {
								from : "/Date(2016,06,29)/",
								to : "/Date(2016,07,01)/",
								label : "洗剤",
								customClass : "ganttRed"
							} ]
						}, {
							name : "選別",
							desc : "機械選別",
							values : [ {
								from : "/Date(2016,07,01)/",
								to : "/Date(2016,07,02)/",
								label : "機械選別",
								customClass : "ganttGreen"
							} ]
						}, {
							name : " ",
							desc : "目視選別",
							values : [ {
								from : "/Date(2016,07,02)/",
								to : "/Date(2016,07,04)/",
								label : "目視選別",
								customClass : "ganttBlue"
							} ]
						}, {
							name : "組み立て",
							desc : "結合",
							values : [ {
								from : "/Date(2016,07,06)/",
								to : "/Date(2016,07,10)/",
								label : "結合",
								customClass : "ganttGreen"
							} ]
						}, {
							name : " ",
							desc : "魂注入",
							values : [ {
								from : "/Date(2016,07,13)/",
								to : "/Date(2016,07,30)/",
								label : "魂",
								customClass : "ganttBlue"
							} ]
						}, {
							name : "搬入",
							desc : "箱詰め",
							values : [ {
								from : "/Date(2016,08,01)/",
								to : "/Date(2016,08,02)/",
								label : "箱詰め",
								customClass : "ganttOrange"
							} ]
						}, {
							name : " ",
							desc : "荷積み",
							values : [ {
								from : "/Date(2016,08,02)/",
								to : "/Date(2016,08,02)/",
								label : "荷積み",
								customClass : "ganttOrange"
							} ]
						} ],
						navigate : "scroll",
						maxScale : "hours",
						itemsPerPage : 10,
						months : [ "1月", "2月", "3月", "4月", "5月", "6月", "7月",
								"8月", "9月", "10月", "11月", "12月" ],
						dow : [ "日", "月", "火", "水", "木", "金", "土" ],
						onItemClick : function(data) {
							alert("進捗バーがクリックされました。");
						},
						onAddClick : function(dt, rowId) {
							alert("空白部分がクリックされました。");
						},
						onRender : function() {
							if (window.console
									&& typeof console.log === "function") {
								console.log("chart rendered");
							}
						}
					});
			prettyPrint();

		});
	</script>

</body>
</html>