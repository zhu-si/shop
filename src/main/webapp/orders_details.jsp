<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>订单</title>
<link rel="stylesheet" type="text/css" href="css/orders.css">
<script src="js/jquery-3.3.1.min.js"></script>

<style type="text/css">

button{
background-color:red; 
	border-radius:5px;
	float:right;
    border: none;
    color: white;
    padding: 7px 15px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

</style>

<script type="text/javascript">
function shopcar(id){
	if(${sessionScope.user != null}){
		location.href="shopcar?id="+id;
	}else{
		alert("请先登录！");
		location.href="login.jsp"
	}
}

function login(id){
	if(${sessionScope.user != null}){
		alert("您已登录！");
	}else{
		location.href="login.jsp"
	}
}
</script>

</head>
<body>
<!---head--------->
	<div class="header" style="font-size: 15px">
    	<div class="box" style="30px">
        	<div class="title">
            	<img class="images01" src="img/images/logo01.jpg" alt="这是一张图片">
                <a href="index"><div>鲜生购首页</div></a>
                <a ><p><span style="float:left;">${sessionScope.name}</span></p></a>
                <a onclick="shopcar(${sessionScope.id})"><p>购物车</p></a>
                <a onclick="login(${sessionScope.id})"><p>登录|注册</p></a>
                <a ><p><img src="img/images/logo02.jpg">我的订单</p></a>
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
	<c:forEach items="${requestScope.orlist}" var="r">
    <div class="title02">
    	<span>订单编号：${r.code}</span>
        <h1>成交时间：${r.date}</h1>
        <!-- <button class="shouhuo" >确认收货</button> -->
    </div>
    
    <c:forEach items="${requestScope.olist}" var="ord">
    <c:if test="${ord.orders_id == r.id}">
    <div class="pic01">
    	<img src="${ord.pic}" alt="这是一张图片">
        <div class="box01">
        	<a href="product.html">${ord.fullname}</a>
			
        </div>
        <span>￥${ord.nowprice}</span>
        <p>${ord.count}</p>
        <div class="box02">
        	<h1>￥${ord.nowprice*ord.count}</h1>
        </div>
        <div class="box03">
        	<p>已发货</p>
        </div>
		<div class="box03">
            <a href="#"><h1>订单详情</h1></a>
        </div>
    </div>
    
     </c:if>
    	</c:forEach>
    </c:forEach>
    
<!---foot-------->
    <div class="footer01">
            <div class="footerBox">
                <img src="img/images/logojgj_03.png" alt="这是一张图片">
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
                                                                                                                                                                                                                                                                                                                     