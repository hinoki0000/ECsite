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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>

$(document).ready(function(){
	$(".abc").bxSlider({
		auto: true,
		mode: 'fade',
		speed: 1000,
		slideWidth: 400
		});
	});


</script>
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<title>Home</title>
	<style type="text/css">
		body {
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
			margin:0 auto;
		}

		/* ========TEMPLATE LAYOUT======== */
		#header {
    width: 100%;
    height: 100px;
    background-color: rgb(3, 244, 230);
}

		#pr{
		fontfamily:curcive;
		font-size:5em;
		}

#main {
    width: 100%;
    height: 570px;
    text-align: center;
}


#top {
    width: 780px;
    margin: 30px auto;
    border: 1px #333;
}


#footer {
    width: 100%;
    height: 80px;
    background-color: #00d4be80;
    clear: both;
}
		#text-center {
			display: inline-block;
			text-align: center;
		}

		.abc{
			width:100%;
			height:300px;
			margin-left:auto;
			margin-right:auto;
			}

		img{
		width:400px;
		height:300px;
		margin-left:auto;

		}

	</style>

</head>
<body>
	<div id="header">

	雑貨通販サイト
	 	<div id="pr">
	 	<span>Xacca</span>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<h1>Home</h1>
		</div>
		<div class="abc">
		
		<img src="images/camera.jpg">
		<img src="images/candle.jpg">
		<img src="images/ceilingfan.jpg">
		<img src="images/cofeemill.jpg">
		<img src="images/illumination.jpg">
		<img src="images/marble.jpg">
		<img src="images/perfume.jpg">
		<img src="images/stand.jpg">
		</div>


	</div>




		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入画面へ"/>
			</s:form>
			<s:if test="#session.id != null">
				<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
			</s:if>
		</div>

	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>