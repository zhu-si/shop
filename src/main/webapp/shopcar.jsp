<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<link rel="stylesheet" type="text/css" href="css/footer.css" />
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<style type="text/css">
table {
	border-color: black;
	border-radius: 2px;
}

td {
	width: 150px;
	height: 90px;
	text-align:;
}
</style>
<script type="text/javascript">
	function MYsubmit() {
		var data = [];
		$(".down1").each(function() {
			if ($(this).find(".chk").prop('checked')) { //判断选中状态
				var id = $(this).attr("myid");
				var count = $(this).find(".n2").text();
				var row = {
					id : id,
					count : count
				};
				data.push(row);
			}
		});

		//提交
		$.ajax({
			type : "POST",
			url : "aaaa",
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify(data),
			dataType : "json",
			success : function(json) {
				if (json.status > 0) {
				}
			}
		});
	}

	//计算数量，金额
	function alljs() {
		var all = 0;
		var finalcount = 0;
		$(".chk").each(function() {
			if ($(this).prop("checked")) {
				var parent = $(this).parents(".down1");
				var amount = parent.find(".l7").text();
				var count = parseInt(parent.find(".n2").text());
				amount = parseFloat(amount.substr(1));
				all += amount;
				alert(all);
				finalcount += count;
			}
		});
		$(".s7").text("￥" + all.toFixed(2));
		$(".s4").text("" + finalcount);
	}

	//删除购物车商品
	$(function() {
		$(".del").on("click", function() {
			$(event.target).parents(".down1").remove();
			alljs();
		});

		$(".chk").on("click", function() {
			alljs();
		});

		//点击数量增加
		$(".n1").on("click", function() {
			var count = parseInt($(event.target).next().text());
			if (count > 1)
				$(event.target).next().text("" + (--count));
			var parent = $(event.target).parents(".down1");
			var id = parent.attr("myid");
			var price = parent.find(".l5").text();
			price = parseFloat(price.substring(1));
			parent.find(".l7").text("￥" + (count * price).toFixed(2));
			alljs();
		});
		//点击数量减少
		$(".n3").on("click", function() {
			var count = parseInt($(event.target).prev().text());
			var parent = $(event.target).parents(".down1");
			$(event.target).prev().text("" + (++count));
			var id = parent.attr("myid");
			var price = parent.find(".l5").text();
			price = parseFloat(price.substring(1));
			parent.find(".l7").text("￥" + (count * price).toFixed(2));
			alljs();
		});
	});

	//点击全选
	$(function() {
		$(".selectall").on("click", function() {
			if (event.target.checked)
				$(".chk").prop("checked", "checked");
			else {
				$(".chk").prop("checked", "");
			}
			alljs();
		});

	});
</script>

</head>
<body>
	<div class="box" style="font-size: 20px">
		<!--头部-->
		<div class="header">
			<div class="header1">
				<div class="header1-cont">
					<div class="left">
						欢迎您来到鲜生购,&nbsp;<span><a href="">${sessionScope.name}</a></span>
					</div>
					<div class="right">
						<ul>
							<li>我的订单<em></em></li>
							<li><a href="shopping.html">购物车<em></em></a></li>
							<li>收藏夹<em></em></li>
							<li><a href="The member center.html">会员中心<em></em></li>
							</a>
							<li>客户服务<em></em></li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header2">
				<div class="header2-cont">
					<a href="index.html"><img src="img/images/gengduo_03.png" /></a>
					<!--172*62-->
					<div class="sousuo">
						<div class="sousuo-up">
							<input type="text" name="" id="" value="" placeholder="泰国榴莲" />
							<em></em>
							<p>搜索</p>
						</div>
						<div class="sousuo-down">
							<ul>
								<li><a class="red" href="">热门：</a></li>
								<li><a class="red" href="">牛油果</a></li>
								<li><a href="">草莓</a></li>
								<li><a a class="red" href="">无花果</a></li>
								<li><a href="">三文鱼</a></li>
								<li><a a class="red" href="">有机菠菜</a></li>
								<li><a href="">蓝莓</a></li>
								<li><a class="red" href="">百香果</a></li>
								<li><a href="">牛肉</a></li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>

				</div>
				<div class="clear"></div>
			</div>
			<div class="header3">
				<div class="header3-cont">
					<ul>
						<li class="l1">全部分类</li>
						<li class="l2">首页</li>
						<li class="l2">主厨先生</li>
						<li class="l2">每日推荐</li>
						<li class="l2">会员专享</li>
						<li class="l2">品质保障</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!--导航横线-->
		<div class="line"></div>
		<div class="cont-shopping">
			<table style="margin-left: 15px">
				<tr>
					<td class="s1"><input type="checkbox" class="selectall" />全选</td>
					<td class="s2">商品信息</td>
					<td class="s3">规格</td>
					<td class="s">单价(元)</td>
					<td class="s5">数量</td>
					<td class="s6">小计</td>
					<td style="margin-left: 120px">操作</td>
				</tr>
				<c:forEach items="${requestScope.carlist}" var="car">
					<tr class="down1" myid="1212">
						<td class="l1"><input type="checkbox" class="chk"
							style="vertical-align: middle; margin-top: -70px" /><img
							style="width: 90px; height: 90px;" src="${car.pic}" /></td>
						<td class="l3"><p>${car.fullname}</p></td>
						<td class="l4">260g*盒</td>
						<td class="l5">￥${car.nowprice}</td>
						<td class="l6" style="cursor: pointer;"><span class="n1">-&nbsp;&nbsp;</span><span
							class="n2">&nbsp;1&nbsp;</span><span class="n3">&nbsp;&nbsp;+</span></td>
						<td class="l7">￥${car.nowprice}</td>
						<td class="l8"><p>移入收藏夹</p>
							<p class="del" style="cursor: pointer;">
								<a href="delete?id=${car.id}">删除</a>
							</p>
							<p>查找相似</p></td>
				</c:forEach>
				</tr>
			</table>
			<div class="all2" style="width: 1100px">
				<input type="checkbox" class="selectall" />全选<span class="s2"
					style="font-size: 20px">删除选中商品</span><span class="s3"
					style="margin-left: 250px; font-size: 20px">已选中商品</span> <span
					class="s4" style="font-size: 20px">0</span><span class="s5"
					style="font-size: 20px">件</span><span class="s6"
					style="font-size: 20px">总价(元)：</span><span class="s7"
					style="font-size: 20px">￥0.00</span><span class="s8"
					onclick="MYsubmit()" style="font-size: 20px">结算</span>
			</div>
		</div>

		<!--footer-->
		<footer>
			<div class="up">
				<ul class="cont">
					<li class="l1"><a href=""><span class="s1"></span><i
							class="i1">顺丰包邮</i></a></li>
					<li class="l1"><a href=""><span class="s2"></span><i
							class="i1">同城次日到达</i></a></li>
					<li class="l1"><a href=""><span class="s3"></span><i
							class="i1">7天无理由退换货</i></a></li>
					<li class="l1"><a href=""><span class="s4"></span><i
							class="i1">线下体验店</i></a></li>
					<li class="l2">
						<p class="p1">24小时全国服务热线</p>
						<p class="p2">400-888-8888</p>
						<p class="p3">
							<a href=""><span class="s5"></span><i class="i2">联系客服</i></a>
						</p>
					</li>

				</ul>
				<div class="clear"></div>
			</div>
			<div class="down">
				<div class="one">
					<ol>
						<dt>
							<a href="">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
					</ol>
					<ol>
						<dt>
							<a href="">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
					</ol>
					<ol>
						<dt>
							<a href="">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
					</ol>
					<ol>
						<dt>
							<a href="">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
					</ol>
					<ol>
						<dt>
							<a href="">购物指南</a>
						</dt>
						<dd>
							<a href="">购物流程</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
					</ol>

					<div class="ew1">
						<p>
							<img src="img/er.png" />
						</p>
						<p>鲜生购公众号</p>

					</div>
					<div class="ew2">
						<p>
							<img src="img/er.png" />
						</p>
						<p>鲜生购APP</p>
					</div>
				</div>
				<div class="clear"></div>
				<div class="two"></div>
				<div class="three">
					<span>网络文化经营许可证：19333520156</span> <span>鲁公网安备：25854651152</span> <span>违法和不良信息举报电话：110</span>
					<span>消费者维权电话：12305</span>
					<p>Copyright&nbsp;©&nbsp;2010-2020&nbsp;xianshenggou.com&nbsp;版权所有</p>
				</div>
		</footer>
	</div>
</body>
</html>
