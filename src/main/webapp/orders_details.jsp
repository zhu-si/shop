<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>订单</title>
<link rel="stylesheet" type="text/css" href="css/orders.css">
<script src="js/jquery-3.3.1.min.js"></script>
</head>

<body>
<!---head--------->
	<div class="header">
    	<div class="box">
        	<div class="title">
            	<img class="images01" src="img/images/logo01.jpg" alt="这是一张图片">
                <a href="index"><div>鲜生购首页</div></a>
                <a href="user.html"><p><span>${sessionScope.name}</span></p></a>
                <a href="user.html"><p>积分13</p></a>
                <a href="#"><p>消息</p></a>
                <a href="#"><p>我的收藏</p></a>
                <a href="orders.html"><p><img src="img/images/logo02.jpg">我的订单</p></a>
                <a href="shopping.html"><p><img src="img/images/logo03.jpg">购物车</p></a>
            </div>
        </div>
		<div class="logoCon">
            <img src="img/images/logojgj_03.png" alt="这是一张图片"> 
            <form><input id="search" type="text" value="" placeholder="输入你想要的商品"><input id="souSuo" type="submit" value="搜索"></form>
        </div>
	</div>
<!---content------->
	<div class="title01">
    	<span>商品</span>
        <h1>单价（元）</h1>
        <h2>数量</h2>
        <h3>实付款</h3>
        <h4>交易状态</h4>  
        <p>操作</p>
    </div>
	<!-----01------>
    <div class="title02">
    	<span>订单编号：283849398475</span>
        <h1>成交时间：2016-10-27</h1>
        <a href="product.html"><h2>店铺：Drowlin</h2></a>  
        <a href="#"><h3>联系商家</h3></a>
    </div>
    <div class="pic01">
    	<img src="images/images81.jpg" alt="这是一张图片">
        <div class="box01">
        	<a href="product.html">欧美范秋冬新款侧拉链厚底粗跟高跟短靴</a>
			<p>颜色：黑色 尺码：S</p>
        </div>
        <span>￥249.00</span>
        <p>1</p>
        <div class="box02">
        	<h1>￥249.00</h1>
            <p>包邮</p>
        </div>
        <div class="box03">
        	<p>已发货</p>
            <a href="#"><h1>订单详情</h1></a>
            <a href="#"><h1>查看物流</h1></a>
        </div>
		<input class="shouhuo" name="确认收货" type="button" value="确认收货">  
    </div>
    <!-----02------>
	<div class="title03">
    		<span>订单编号：234566774322</span>
        	<h1>成交时间：2016-10-03</h1>
        	<a href="product.html"><h2>店铺：妖精的口袋</h2></a>  
        	<a href="#"><h3>联系商家</h3></a>
    </div>
    <div class="pic02">
    	<img src="images/images90.jpg" alt="这是一张图片">
        <div class="box01">
        	<a href="product.html">妖精的口袋百搭背带牛仔裤女九分裤</a>
			<p>颜色：蓝色 尺码：M</p>
        </div>
        <span>￥249.00</span>
        <p>1</p>
        <div class="box02">
        	<h1>￥269.00</h1>
            <p>包邮</p>
        </div>
        <div class="box03">
            <a href="#"><h1>订单详情</h1></a>
            <a href="#"><h2>查看物流</h2></a>
        </div>
		<a href="#"><h1>删除订单</h1></a>
    </div>
    <!-----03------>
    <div class="title04">
    		<span>订单编号：234566774322</span>
        	<h1>成交时间：2016-09-22</h1>
        	<a href="product.html"><h2>店铺：潮男时尚</h2></a>  
        	<a href="#"><h3>联系商家</h3></a>
    </div>
    <div class="pic03">
    	<img src="images/images91.jpg" alt="这是一张图片">
        <div class="box01">
        	<a href="product.html">港仔男士新冬装羊羔毛翻领棉衣短款外套</a>
			<p>颜色：灰色 尺码：L</p>
        </div>
        <span>￥329.00</span>
        <p>1</p>
        <div class="box02">
        	<h1>￥329.00</h1>
            <p>包邮</p>
        </div>
        <div class="box03">
            <a href="#"><h1>订单详情</h1></a>
            <a href="#"><h2>查看物流</h2></a>
        </div>
		<a href="#"><h1>删除订单</h1></a>
    </div>
        <!-----04------>
    <div class="title05">
    		<span>订单编号：233655790087</span>
        	<h1>成交时间：2016-09-15</h1>
        	<a href="product.html"><h2>店铺：潘多拉的鞋柜</h2></a>  
        	<a href="#"><h3>联系商家</h3></a>
    </div>
    <div class="pic04">
    	<img src="images/images92.jpg" alt="这是一张图片">
        <div class="box01">
        	<a href="product.html">加绒短靴女鞋冬季粗跟中跟百搭英伦风靴子</a>
			<p>颜色：黑色 尺码：37</p>
        </div>
        <span>￥169.00</span>
        <p>1</p>
        <div class="box02">
        	<h1>￥169.00</h1>
            <p>包邮</p>
        </div>
        <div class="box03">
            <a href="#"><h1>订单详情</h1></a>
            <a href="#"><h2>查看物流</h2></a>
        </div>
		<a href="#"><h1>删除订单</h1></a>
    </div>
<!---foot-------->
    <div class="footer01">
            <div class="footerBox">
                <img src="images/logo05.jpg" alt="这是一张图片">
                <div class="footerCon01">
                    <ul class="foot01">
                        <li><a href="#"><span>公司</span></a></li>
                        <li><a href="#">关于我们</a></li>
                        <li><a href="#">招聘信息</a></li>
                        <li><a href="#">联系我们</a></li>
                    </ul>
                </div>
                <div class="footerCon02">
                    <ul class="foot02">
                        <li><a href="#"><span>消费者</span></a></li>
                        <li><a href="#">消费者服务</a></li>
                        <li><a href="#">意见反馈</a></li>
                        <li><a href="#">手机版下载</a></li>
                    </ul>
                </div>
                <div class="footerCon03">
                    <ul class="foot03">
                        <li><a href="#"><span>支付方式</span></a></li>
                        <li><a href="#">快捷支付</a></li>
                        <li><a href="#">银联支付</a></li>
                        <li><a href="#">微信支付</a></li>
                    </ul>
                </div>
                <div class="footerCon04">
                    <ul class="foot04">
                        <li><a href="#"><span>商家服务</span></a></li>
                        <li><a href="#">商家入驻</a></li>
                        <li><a href="#">商家中心</a></li>
                        <li><a href="#">运营服务</a></li>
                    </ul>
                </div>
                <div class="footerCon05">
                    <ul class="foot05">
                        <li><a href="#"><span>手机商城</span></a></li>
                    </ul>
                    <div class="erWeiMa"></div>
                </div>
            </div>
        </div>
    <div class="footer02">
    	<p>营业执照注册号：330106000129004   增值电信业务经营许可证：鲁B2-20110349  网络文化经营许可证：鲁网文（2016）0349-219号  
安全责任书 鲁公网安备 33010602002329号——林杨工作室</p>
	</div>
</body>
</html>
                                                                                                                                                                                                                                                                                                                     