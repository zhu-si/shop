<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript">
		
		function userUpdate (){
			alert(1111112312);
			$.post("user_c/userUpdate",$(".user").serialize(),function(json){
				if(json.status>0){
					alert(json.text);
				}
			},"json");
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
		<div class="box">
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
		<div class="cont-hy">
			<ul>
				<li class="left">
					<dt class="d1" style="cursor:pointer;">订单中心</dt>
					<dd onclick="orders(${sessionScope.user.id})" style="cursor:pointer;">我的订单</dd>
					<dt class="d2" style="cursor:pointer;">收藏中心</dt>
					<dd style="cursor:pointer;">我的收藏</dd>
					<dt class="d3" style="cursor:pointer;">设置中心</dt>
					<dd style="cursor:pointer;">收货地址</dd>
				</li>
				<li class="center">
					<div class="d1">
						<span class="s1">基本信息</span>
						<span class="s2">头像照片</span>
					</div>
					<div class="d3">
						<form class="user" method="post">
						    <div class="email">
								<label>用户名：</label>
								<input class="input1" type="email" name="email" id="" value="${sessionScope.user.email}" />
								<input class="input1" type="hidden" name="id" id="" value="${sessionScope.user.id}" />
					        </div>
							<div class="tel">
								<label>电话：</label>
								<input class="input1" type="tel" name="tel" id="" value="${sessionScope.user.tel}" />
							</div>
							
							<div class="hobby">
								<label>备注：</label>
								<input class="input1" type="text" name="comments" id="" value="${sessionScope.user.comments}" />
							</div>
							<input type="button" onclick="userUpdate()" value="提交" style="margin-left:150px;border-radius:5px"/>
						</form>
					</div>
				</li>
				<li class="right">
					<img src="img/touxiang1.png" style="width:150px;height:150px;margin-left:200px"/>
				</li>
			</ul>
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
