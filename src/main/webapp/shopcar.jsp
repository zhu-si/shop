<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

/*
function refresh(){ 
	alert(111);
	}
window.refresh();
*/

function countchange(id,count){
        var data={
        		id:id,
        		count:count,
        }
        $.ajax({
			type : "POST",
			url : "countUp",
			/* contentType : "application/json; charset=utf-8", */
			data : data,
			dataType : "text",
			success : function(result) {
			//	alert(result);
			}
		});
};

function pay(id) {
	if(confirm("确认购买？")){
		var ids=[];
		var allamount;
		
		$(".chk").each(function(){
			if( $(this).prop("checked")){
				ids.push($(this).attr("uid"));
			}
		});
		
		if(ids.length==0){
			alert("请先选择商品...");
			return ;
		}
		console.log();
		ids = ids+"";
		allamount = $(".s7").text();
		allamount = parseFloat(allamount.substr(1));
		location.href="pay?ids="+ids+"&allamount="+allamount;
	}
	
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
				finalcount += count;
			}
		});
		$(".s7").text("￥" + all.toFixed(2));
		$(".s4").text("" + finalcount);
	}
	function del(id){
		if(confirm("确认删除？")){
			var target=$(event.target).parents(".down1");
			$.post("del",{id:id},function(res){
				if(res.status>0){
					target.remove();
					alljs();
					alert(res.text);		
				}
			},"json");		
		}
	}
	
	
	$(function() {
		
		$(".chk").on("click", function() {
			alljs();
		});

		//点击数量增加
		$(".n1").on("click", function() {
			var count = parseInt($(event.target).next().text());
			if (count > 1)
				$(event.target).next().text("" + (--count));
			var parent = $(event.target).parents(".down1");
			var id = parent.attr("id");
			var price = parent.find(".l5").text();
			price = parseFloat(price.substring(1));
			parent.find(".l7").text("￥" + (count * price).toFixed(2));
			countchange(id,count);
			alljs();
		});
		//点击数量减少
		$(".n3").on("click", function() {
			var count = parseInt($(event.target).prev().text());
			var parent = $(event.target).parents(".down1");
			$(event.target).prev().text("" + (++count));
			var id = parent.attr("id");
			var price = parent.find(".l5").text();
			price = parseFloat(price.substring(1));
			parent.find(".l7").text("￥" + (count * price).toFixed(2));
			countchange(id,count);
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
<body onload="alljs()">
	<div class="box" style="font-size:15px">
		<!--头部-->
		<div class="header">
			
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
					<tr class="down1" id="${car.id}" myid="${car.product_id}">
						<td class="l1"><input type="checkbox" class="chk" uid="${car.id}"
							style="vertical-align: middle; margin-top: -70px" /><img
							style="width: 90px; height: 90px;" src="${car.pic}" /></td>
						<td class="l3"><p>${car.fullname}</p></td>
						<td class="l4">260g*盒</td>
						<td class="l5">￥${car.nowprice}</td>
						<td class="l6" style="cursor: pointer;">
							<span class="n1">-</span>
							<span class="n2">${car.count}</span>
							<span class="n3">+</span></td>
						<td class="l7">￥<fmt:formatNumber value="${(car.nowprice*car.count)}" pattern="#.##"/></td>
						<td class="l8"><!-- <p>移入收藏夹</p> -->
							<p class="del" style="cursor: pointer;"><a onclick="del(${car.id})">删除</a></p>
							<!-- <p>查找相似</p> --></td>
				</c:forEach>
				</tr>
			</table>
			<div class="all2" style="width: 1100px">
				<input type="checkbox" class="selectall" />全选<span class="s2" style="font-size: 15px">删除选中商品</span>
					<span class="s3" style="margin-left: 250px; font-size: 15px">已选中商品</span> 
					<span class="s4" style="font-size: 15px">0</span>
					<span class="s5" style="font-size: 15px">件</span>
					<span class="s6" style="font-size: 15px;margin-left:30px">总价(元)：</span>
					<span class="s7" style="font-size: 15px">￥0.00</span>
					<span class="s8" onclick="pay()" style="font-size:15px;cursor: pointer;margin-left:100px">购买</span>
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
