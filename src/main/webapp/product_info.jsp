﻿<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function shopping(){
		/* var data=[]; */
			var user_id=1;
			var product_id=$(".product").attr("id");
			var count=$(".number3").text();
			
			$.ajax({
		        type: "POST",
		        url: "info_shopcar",
		        /* contentType: "application/json; charset=utf-8", */
		        data:{
		        	product_id:product_id,
		        	count:count,
		        	user_id:user_id
		        },
		        dataType:"text",
		        success: function (json) {
		        	alert(json);
		        }
		    });
			/* alert(count); */
			/* var row={product_id:product_id,count:count,user_id:user_id}; */
			/* data.push(row); */
	}
	
	$(function() {

		$(".jia").on("click", function() {
			var count = parseInt($(event.target).next().text());
			if (count > 1)
				$(event.target).next().text("" + (--count));
			var id=parent.attr("id");
		});
		$(".jian").on("click", function() {
			var count = parseInt($(event.target).prev().text());
			var parent = $(event.target).parents(".down1");
			$(event.target).prev().text("" + (++count));
			var id=parent.attr("id");
		});
	});
</script>

</head>
<body>
	<div class="box">
		<div class="header">
		<div class="cont">
			<div class="banner" style="height:120px">
				<img src="img/sha.png" />
			</div>
			<div class="buy">
				<p class="p1">
					您现在的位置：<span class="s1">首页<em>></em>新鲜水果专场<em>></em></span><span
						class="s2">榴莲</span>
				</p>
			</div>
		</div>
		<!--图片展示-->
		<div class="container boxs">
			<div class="top fl">
				<div class="overflow">
					<div id="preview" class="spec-preview">
						<span class="jqzoom"><img width="521px" height="507px"
							jqimg="img/gshaf.png" src="img/gshaf.png" /></span>
					</div>
				</div>
				<!--缩图开始-->
				<div class="spec-scroll">
					<div class="re">
						<div class="prev">
							<img src="img/images/ajdhfk_03.png" />
						</div>
						<div class="next">
							<img src="img/images/gdsfjg_03.png" />
						</div>
						<div class="items">
							<ul>
								<li><img width="102px" height="102px"
									src="${requestScope.plist.piclist[1]}"
									onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px"
									src="${requestScope.plist.piclist[2]}"
									onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px"
									src="${requestScope.plist.piclist[3]}"
									onmousemove="preview(this);"></li>
								<li><img width="102px" height="102px"
									src="${requestScope.plist.piclist[4]}"
									onmousemove="preview(this);"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--详细介绍-->
			<div class="goods fl">
				<input class="product" type="hidden" id="${requestScope.plist.id}">
				<div class="heard">${requestScope.plist.fullname}</div>
				<div class="hui">
					<div class="money">
						<div class="price">价&nbsp;格:</div>
						<span class="price1">${requestScope.plist.nowprice}</span> <span
							class="price2"> <del>${requestScope.plist.price}</del>
						</span>
					</div>
					<div class="lingquan">
						<div class="quan">领&nbsp;券:</div>
						<span style="font-size: 15pxp">${requestScope.plist.activity}</span>
						<!--82*25-->
						<span class="huodong">${requestScope.plist.tip}</span>
					</div>
					<div class="song">
						<div class="songzhi">送&nbsp;至：</div>
						<span class="address">青岛 &nbsp;城阳区</span><span class="sanjiao"></span>
						<p>
							由&nbsp;<span class="zhenxiang">珍享旗舰店</span>&nbsp;从海南发货&nbsp;并提供售后服务
							<span class="lianxi"></span><span class="red">联系商家</span>
						</p>
					</div>
				</div>
				<div class="else">
					<div class="guige">
						<div class="guige2">规&nbsp;格：</div>
						<span class="guige3">2kg*1个装</span><span class="guige3">2.5kg*1个装</span><span
							class="guige3">3kg*1个装</span>
					</div>
					<div class="number">
						<div class="number2">数&nbsp;量：</div>
						<span class="jia">-</span> 
						<span class="number3">1</span> 
						<span class="jian">+</span>
						<p class="goumai">
							<span class="goumai1">立即购买</span>
							<span class="goumai2" onclick="shopping();">加入购物车</span>
						</p>
					</div>
					<div class="fenqi">
						<div class="fenqi2">分&nbsp;期：</div>
						<span class="fenqi3"> 2期免息 </span> <span class="fenqi4"></span>
						<!--17-->
					</div>
					<div class="tese">
						<div class="tese2">特&nbsp;色：</div>
						<span class="tese3">顺丰包邮</span>
						<p class="tese4">生鲜类产品不支持7天无理由退换货</p>
					</div>
				</div>

			</div>

		</div>
		<div class="clear"></div>
		<!--商品详情开始-->
		<div class="box2">
			<div class="box21 fl" style="width: 226px">
				<div class="shangjia" style="height: 400px">
					<div class="logo-shangjia"></div>
					<div class="shangjia1">
						商&nbsp;家:<span class="shangjia12">珍享旗舰店</span>
					</div>
					<div class="shangjia2">
						联&nbsp;系：<span class="shangjia21"></span><span class="shangjia22">联系客服</span>
					</div>
					<div class="shangjia3">
						商&nbsp;家:<span class="shangjia32">400-888-5555</span>
					</div>
					<div class="line-shangjia"></div>
					<ul class="Three">
						<li class="one fl"><p class="p1">商品</p>
							<p class="p2">
								5.52 <span class="jiantou1"></span>
							</p></li>
						<li class="two fl"><p class="p1">服务</p>
							<p class="p2">
								5.67 <span class="jiantou2"></span>
							</p></li>
						<li class="three fl"><p class="p1">物流</p>
							<p class="p2">
								4.83 <span class="jiantou3"></span>
							</p></li>
					</ul>

					<div class="clear"></div>
					<div class="enterstore">
						<span class="enter1">进入店铺</span><span class="enter2">收藏店铺</span>
					</div>
				</div>
				<div class="search" style="margin-top: 10px">
					<div class="search-box">
						<input type="text" name="" id="" value="搜索店内商品" /><span
							class="fangdajing"></span>
						<p>
							<span class="span1">热门：</span><span class="span1">车厘子</span><span
								class="span2">牛油果</span><span class="span1">西柚</span><span
								class="span1">橙子</span><span class="span1">榴莲</span><span
								class="span2">蓝莓</span>
						</p>
					</div>
				</div>
				<!--猜你喜欢-->
				<div class="like">
					<div class="title-like">
						<span class="line"></span><span class="center">猜你喜欢</span><span
							class="line"></span>
					</div>
					<!--猜你喜欢商品-->
					<div class="likeone">
						<span class="tu"><img src="img/images/jsfagkj_07.png" /></span> <span
							class="wen"><p class="p1">榴莲千层饼700g*1个*1袋</p>
							<p class="p2">口感绵密&nbsp;留香满口</p>
							<p class="p3">￥76.8</p></span>
					</div>
					<div class="likeone">
						<span class="tu"><img src="img/jhfkjlha.png" /></span> <span
							class="wen"><p class="p1">榴莲饼300g*1盒</p>
							<p class="p2">口感细腻&nbsp;留香满口</p>
							<p class="p3">￥48.5</p></span>
					</div>
					<div class="likeone">
						<span class="tu"><img src="img/jhsfak.png" /></span> <span
							class="wen"><p class="p1">榴莲酥260g*1盒</p>
							<p class="p2">口感细腻&nbsp;留香满口</p>
							<p class="p3">￥24.5</p></span>
					</div>
					<div class="likeone">
						<span class="tu"><img src="img/njhf.png" /></span> <span
							class="wen"><p class="p1">美味冻干榴莲300g*1袋</p>
							<p class="p2">口感细腻&nbsp;留香满口</p>
							<p class="p3">￥35.6</p></span>
					</div>
					<!--进口生鲜排行榜-->
					<div class="list">
						<div class="title-list">
							<span class="logo-list"></span><span class="wenzi">进口生鲜排行榜</span>
						</div>
						<div class="select">
							<span class="one">同品牌</span><span class="two">同类别</span><span
								class="three">同产地</span>
						</div>
						<div class="listone">
							<span class="tu"><img src="img/images/list_06.png" /></span> <span
								class="wen">
								<p class="p1">珍享冷冻渤海龙虾尾</p>
								<p class="p2">500g</p>
								<p class="p3">￥35.6</p>
							</span>
						</div>
						<div class="listone">
							<span class="tu"><img src="img/images/list_03.png" /></span> <span
								class="wen">
								<p class="p1">珍享熟冻加拿大红虾</p>
								<p class="p2">500g</p>
								<p class="p3">￥40.5</p>
							</span>
						</div>
						<div class="listone">
							<span class="tu"><img src="img/gfkjsf.png" /></span> <span
								class="wen">
								<p class="p1">珍享越南进口火龙果</p>
								<p class="p2">1.5kg</p>
								<p class="p3">￥26.5</p>
							</span>
						</div>
						<div class="listone">
							<span class="tu"><img src="img/images/list_08.png" /></span> <span
								class="wen">
								<p class="p1">珍享国产蓝莓</p>
								<p class="p2">300g</p>
								<p class="p3">￥38.5</p>
							</span>
						</div>
						<div class="listone">
							<span class="tu"><img src="img/images/list_10.png" /></span> <span
								class="wen">
								<p class="p1">珍享精选脐橙</p>
								<p class="p2">1.5kg</p>
								<p class="p3">￥28.5</p>
							</span>
						</div>

					</div>
				</div>
			</div>
			<!--商品详情右下部分-->
			<div class="box22 fl">
				<div class="title-thing">
					${requestScope.plist.info}</div>
		<footer>
			<!--<div class="up">
			<ul class="cont">
				<li class="l1"><a href=""><span class="s1"></span><i class="i1">顺丰包邮</i></a></li>
				<li class="l1"><a href=""><span class="s2"></span><i class="i1">同城次日到达</i></a></li>
				<li class="l1"><a href=""><span class="s3"></span><i class="i1">7天无理由退换货</i></a></li>
				<li class="l1"><a href=""><span class="s4"></span><i class="i1">线下体验店</i></a></li>
				<li class="l2">
					<p class="p1">24小时全国服务热线</p>
					<p class="p2">400-888-8888</p>
					<p class="p3"><a href=""><span class="s5"></span><i class="i2">联系客服</i></a></p>
				</li>
				
			</ul>
			<div class="clear"></div>
		</div>-->
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
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.jqzoom.js" type="text/javascript" charset="utf-8"></script>
<script src="js/base.js" type="text/javascript" charset="utf-8"></script>
</html>
