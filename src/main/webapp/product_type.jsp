<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/fruit.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/>
	</head>
	<body>
		<div class="box">
			<div class="header">
				<div class="header1">
					<div class="header1-cont">
						<div class="left">
							欢迎您来到鲜生购,&nbsp;<span><a href="">${sessionScope.name}</a></span>
						</div>
						<div class="right">
							<ul>
								<li>我的订单<em></em></li>
								<li><a href="shopcar?id=${sessionScope.id}">购物车<em></em></a></li>
								<li>收藏夹<em></em></li>
								<li><a href="The member center.html">会员中心<em></em></li></a>
								<li>客户服务<em></em></li>
							</ul>
							<div class="clear">
								
							</div>
							
						</div>
						
					</div>
					<div class="clear">
						
					</div>
					
				</div>
				<div class="header2">
					<div class="header2-cont">
					<a href="index.html"><img src="img/images/gengduo_03.png"/></a>  <!--172*62-->
						<div class="sousuo">
							<div class="sousuo-up">
								<input type="text" name="" id="" value=""placeholder="泰国榴莲" />
								<em></em>
								<p>搜索</p>
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
						<div class="gouwuche">
							<a href="shopping.html"><em></em></a><span>购物车</span>
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
		  <!--分类-->
		<div class="cont-xg">
			<div class="fenlei">
				<div class="bread">
					首页&nbsp;<em class="em1"></em>&nbsp;<span>水果&nbsp;<em></em>&nbsp;</span>
				</div>
				<div class="title-sg">
					水果<span class="span1">商品删选</span><span class="span2">共156328件商品</span>
				</div>
				<div class="d1">
					<span class="s1">分类：</span><span class="s2">苹果</span><span class="s2">橙子</span><span class="s2">桃子</span><span class="s2">菠萝</span><span class="s2">哈密瓜</span><span class="s2">火龙果</span>
					<span class="s2">西瓜</span><span class="s2">柠檬</span><span class="s2">牛油果</span><span class="s2">菠萝</span><span class="s2">蓝莓</span><span class="s2">樱桃</span><span class="s2">榴莲</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">品牌：</span><span class="s2">优得荟</span><span class="s2">天马吃荟</span><span class="s2">鲜果之家</span><span class="s2">珍享</span><span class="s2">佳惠</span><span class="s2">展沛</span><span class="s2">天天新鲜</span>
				</div>
				<div class="d1">
					<span class="s1">价格：</span><span class="s2">0-29</span><span class="s2">30-59</span><span class="s2">60-99</span><span class="s2">100-149</span><span class="s2">150-249</span><span class="s2">250-400</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">原产地：</span><span class="s2">越南</span><span class="s2">泰国</span><span class="s2">加拿大</span><span class="s2">马来西亚</span><span class="s2">印度</span><span class="s2">新西兰</span><span class="s2">更多</span>
				</div>
				<div class="d1">
					<span class="s1">进口/国产：</span><span class="s2">进口</span><span class="s2">国产</span>
				</div>
				<div class="more">更多选项<em></em></div>
				
				
			</div>
			<!--商品-->
			<div class="sp">
				<div class="title-sp">
				<span class="s1">综合排序</span><span class="s2">销量</span><span  class="s2">价格</span><span  class="s2">评价</span class="s2"><span class="s2">上架时间</span>
			   </div>
			   <script type="text/javascript">
			   	  $('.sp .title-sp span').mouseenter(function () {
			   	  	$(this).css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   	  $('.sp .title-sp span').mouseleave(function () {
			   	  	$(this).css({'background':'#ffffff','color':'#3c3b3a'})
			   	  	$('.sp .title-sp .s1').css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   </script>
			   <!--商品图片-->
			   <ul>
			   <c:forEach items="${requestScope.typelist}" var="ptype">
			   	<li>
		    		<a class="a2" href="product_info?id=${ptype.id}">
			   		<img src="${ptype.pic}" width="150" height="135"/>
			   		<div class="wenzi">
			   			<p class="p1">${ptype.fullname}</p>
				   		<p class="p2">￥${ptype.nowprice}</p>
				   		<p class="p3">已售<span>${ptype.salecount}</span>件</p>
			   		</div>
			   		</a>
			   	</li>
			   	</c:forEach>
			   	
			   </ul>
			   <!--第二行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_03.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_06.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_09.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_103.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_105.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第三行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_108.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_12.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_19.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_22.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_25.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第四行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_28.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_30.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_38.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_38.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_40.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第五行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_43.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_46.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_48.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_56.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_59.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第六行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_62.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_65.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_80.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_77.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_83.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第七行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pdhfs_86.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_97.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pgsadj_03.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pgsadj_06.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pgsadj_08.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <!--第八行-->
			   <ul>
			   	<li>
			   		<img src="img/images/pgsadj_11.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pgsadj_14.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_46.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_25.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   	<li>
			   		<img src="img/images/pdhfs_38.png"/>
			   		<div class="wenzi">
			   			<p class="p1">珍享<span>泰国进口金枕头榴莲</span></p>
				   		<p class="p2">￥36.8</p>
				   		<p class="p3">已售<span>1563</span>件</p>
			   		</div>
			   	</li>
			   </ul>
			   <script type="text/javascript">
			   	     $('.cont-xg .sp ul li').mouseenter(function () {
			   	     	$(this).css('border-color','#d63a3b')
			   	     })
			   	     $('.cont-xg .sp ul li').mouseleave(function () {
			   	     	$(this).css('border-color','#ffffff')
			   	     })
			   </script>
			   <div class="page">
			   	  <span class="s1">上一页</span>
			   	  <span class="s5">1</span>
			   	  <span class="s3">2</span>
			   	  <span class="s3">3</span>
			   	  <span class="s3">···</span>
			   	  <span class="s2">50</span>
			   	  <span class="s1">下一页</span>
			   	  <span class="s4">共50页</span>
			   	  <span class="s4">到第</span>
			   	  <span class="s2">2</span>
			   	  <span class="s4">页</span>
			   	  <span class="s1">确定</span>
			   </div>
			   <script type="text/javascript">
			   	  $('.page .s1').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s1').mouseleave(function () {
			   	     	$(this).css({'background':'#eeeeee','color':'#2d2c2c'})
			   	     })
			   	  $('.page .s2').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s2').mouseleave(function () {
			   	     	$(this).css({'background':'#eeeeee','color':'#2d2c2c'})
			   	     })
			   	  $('.page .s3').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s3').mouseleave(function () {
			   	     	$(this).css({'background':'#none','color':'#2d2c2c'})
			   	     })
			   </script>
			</div>
			
		</div>
		<footer>
		<div class="up">
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
		</div>
		<div class="down">
			<div class="one">
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				
				<div class="ew1">
					<p><img src="img/er.png"/></p>
					<p>鲜生购公众号</p>
					
				</div>
				<div class="ew2">
					<p><img src="img/er.png"/></p>
					<p>鲜生购APP</p>
				</div>
			</div>
			<div class="clear"></div>
			<div class="two"></div>
			<div class="three">
				<span>网络文化经营许可证：19333520156</span>
				<span>鲁公网安备：25854651152</span>
				<span>违法和不良信息举报电话：110</span>
				<span>消费者维权电话：12305</span>
				<p>Copyright&nbsp;©&nbsp;2010-2020&nbsp;xianshenggou.com&nbsp;版权所有</p>
			</div>
			
	</footer>	
		</div>
	</body>
</html>
