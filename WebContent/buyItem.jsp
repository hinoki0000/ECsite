<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>BuyItem画面</title>
	<style type="text/css">
	/* ========TAG LAYOUT======== */
		body {
		width: 100%;
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		}

		table {
			text-align:center;
			margin:0;

		}

		table#tbl_detail {
			height: 200px;
			margin: 5px;
		}

	/* ========ID LAYOUT======== */
		html {
			width: 1024px;
		}


		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
		}

		#header {
		   width: 100%;
		   height: 80px;
		   background-color: black;
		}

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
		}

		#img{
		width:40%;
		height:200px;
		float: left;
		}

		#detail{
		width:60%;
		height:25px;
		float: left;
		}

		img.img {
			width: 300px;
			height: 200px;
		}


		}
	</style>
</head>
<body>
	<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>商品購入画面</p>
		</div>
		<div id="img">
			<s:iterator value="buyItemDTO">
			<table>
				<tr>
					<td>
					<img class="img" src="<s:property value="image_file_path"/>">
					</td>
				</tr>
			</table>
		</s:iterator>
		</div>

		<div id="detail">
			<s:iterator value="buyItemDTO">
		<s:form action="BuyItemAction">
		<s:hidden name="itemid" value="%{id}" />
		<table id="tbl_detail">
				<tr>
					<td>
						<span>商品名</span>
					</td>
					<td>
						<s:property value="itemName" />
						<s:param name ="itemName"  value="itemName"/>
						<s:hidden name="itemName" value="%{itemName}" />
					</td>                   <!--s:paramで 一度画面に表示されたフィールド値を再度actionに返している -->
				</tr>
				<tr>
					<td>
						<span>値段</span>
					</td>
					<td>
						<s:property value="itemPrice" /><span>円</span>
						<s:param name="itemPrice" value="itemPrice"/>
						<s:hidden name="itemPrice" value="%{itemPrice}"/>
					</td>
				</tr>
				<tr>
					<td>
						<span>購入個数</span>
					</td>
					<td><%-- <s:property value="count"/>
						<s:param name="count" value="count"/>
						<s:hidden name="count" value="%{count}"/> --%>
						 <select name="count">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<span>支払い方法</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>

				</tr>

						<s:submit value="カートに入れる"/>

			</table>
				</s:form>
			</s:iterator>





			<div>

				<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				<p>マイぺージは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
			</div>
		</div>
	</div>

</body>
</html>