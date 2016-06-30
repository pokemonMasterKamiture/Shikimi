<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

<link rel="stylesheet" type="text/css" href="resources/css/sidebar.css" />

<div id="sidebar">
	<div class="main">
		<h3>MENU</h3>
		<ul>
			<li><a href="/st/OrderAdd"><input type="button"
					value="受注　追加"></a></li>
			<li><a href="/st/OrderList"><input type="button"
					value="受注　一覧"></a></li>
			<li><a href="/st/ProgressList"><input type="button"
					value="進捗　一覧"></a></li>
			<li><a href="/st/CustomerAdd"><input type="button"
					value="顧客　追加"></a></li>
			<li><a href="/st/CustomerList"><input type="button"
					value="顧客　一覧"></a></li>
			<li><a href="/st/ProductAdd"><input type="button"
					value="商品　追加"></a></li>
			<li><a href="/st/ProductList"><input type="button"
					value="商品　一覧"></a></li>
			<li><a href="/st/PartsAdd"><input type="button"
					value="部品　追加"></a></li>
			<li><a href="/st/PartsList"><input type="button"
					value="部品　一覧"></a></li>
			<li><a href="/st/ReceiverAdd"><input type="button"
					value="納品先追加"></a></li>
			<li><a href="/st/ReceiverList"><input type="button"
					value="納品先一覧"></a></li>
		</ul>
	</div>
</div>