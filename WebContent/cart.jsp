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
<title>カート画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
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

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: centerw;
}
</style>
</head>
<body>
	カート画面 購入候補の展示








			<%-- <s:param name="Lex" value="product_name"/>
  title="<s:property value="product_name"/>"><s:property value="product_name"/></a>

 <s:hidden name="Lex"  value="%{product_name}"/> --%>

			<table>
			<s:iterator value="cartlist">
				<tr>
					<td><span>商品名</span></td>
					<td><s:property value="item_name" />

					</td>
				</tr>



				<tr>
					<td><s:property value="item_price" /><span>円</span>

					</td>
				</tr>

				<tr>
					<td><s:property value="count" /><span>個</span></td>

				</tr>
				</s:iterator>
				</table>






						<s:form action="BuyItemConfirmAction">
						 <s:submit value="確認画面へ" />
						</s:form>


						<s:form action="BuyItemList">
						<s:submit value="買い物を続ける"/>
						</s:form>





</body>
</html>