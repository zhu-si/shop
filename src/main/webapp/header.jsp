<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>ZHU SHOP</title>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/homepage.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css" />
		<link rel="stylesheet" type="text/css" href="css/Detail page.css" />
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/footer.css" />
		<link rel="stylesheet" type="text/css" href="css/fruit.css"/>

		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
		
		<script type="text/javascript">
		
		
		
		function mysearch() {
			$.ajax({
				url:"product_type",
				type:"post",
				data:$("#s").serialize(),
				success:function(){
					
				}
			});
		}
		
		function shopcar(id){
			if(${sessionScope.user != null}){
				location.href="shopcar?id="+id;
			}else{
				alert("请先登录！");
				location.href="login.jsp"
			}
		}
		
		function orders(id){
			if(${sessionScope.user != null}){
				location.href="orders?id="+id;
			}else{
				alert("请先登录！");
				location.href="login.jsp"
			}
		}
		</script>
		
		
	</head>
	<body>
	<div class="header1">
				<div class="header1-cont">
					<div class="left">
						欢迎您来到鲜生购,&nbsp;<span><a class="a2">${sessionScope.name}</a></span>
					</div>
					<div class="right">
						<ul>
							<li><a onclick="orders(${sessionScope.id})">我的订单<em></em></a></li>
							<li><a onclick="shopcar(${sessionScope.id})">购物车<em></em></a></li>
							<li><a href="login.jsp">登录|注册<em></em></a></li>
							<li><a href="The member center.html">会员中心<em></em></a></li>
							<li>客户服务<em></em></li>
						</ul>
						<div class="clear"></div>

					</div>

				</div>
				<div class="clear"></div>

			</div>
			<div class="header2">
				<div class="header2-cont">
					<a href="index.jsp"><img src="img/images/gengduo_03.png" /></a>
					<!--172*62-->
					<div class="sousuo" style="margin-left:200px">
						<div class="sousuo-up">
							<form action="product_type" id="s">
								<input type="text" name="name" placeholder="泰国榴莲" value="" style="width:505px"/> <em></em>
								<p onclick="mysearch();">搜索</p>
							</form>
						</div>
						<div class="sousuo-down">
							<ul>
								<li><a class="red" href="">热门：</a></li>
								<li><a class="red" href="">牛油果</a></li>
								<li><a href="">草莓</a></li>
								<li><a a class="red" href="">草莓</a></li>
								<li><a href="">三文鱼</a></li>
								<li><a a class="red" href="">有机菠菜</a></li>
								<li><a href="">蓝莓</a></li>
								<li><a class="red" href="">百香果</a></li>
								<li><a href="">牛肉</a></li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>
					<div class="gouwuche" style="margin-top:10px">
						<a onclick="shopcar(${sessionScope.id})"><em></em><span style="font-size:20px;margin-top:5px">购物车</span></a>
					</div>
				</div>
				<div class="clear"></div>

			</div>
	
	</body>
	</html>