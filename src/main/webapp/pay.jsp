<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>确认订单</title>
    <link rel="stylesheet" href="css/public.css">
    <link rel="stylesheet" href="css/content.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"> </script>
    <style type="text/css">
    
    td{
    style="width: 120px"
    }
    
    </style>
    <script type="text/javascript">
    function openaddress(){
    	
    }
    
    function settlement() {
    	var address_id = "${requestScope.address[0].id}";
		var ids = "${sessionScope.ids}";
	//提交
    	 $.post("aaaa",{ids:ids,address_id:address_id},function(json) {
    		if(json.status==1){
    			alert(json.text);
    			location.href="orders?id="+${sessionScope.id};
    		}
    			}); 
    	} 
    	    
    		function orders(id){
    			if(${sessionScope.user != null}){
    				location.href="orders?id="+id;
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
    		
    		function shopcar(id){
    			if(${sessionScope.user != null}){
    				location.href="shopcar?id="+id;
    			}else{
    				alert("请先登录！");
    				location.href="login.jsp"
    			}
    		}
	
    </script>
</head>
<body>
<div class="headerCon">
    <div class="headTop">
        <div class="topCon">
            <div class="topLeft">配送至：山东</div>
            <div class="topRight">
                <a>${sessionScope.name}</a>&nbsp;|&nbsp;<a onclick="orders(${sessionScope.id})">我的订单</a>&nbsp;|&nbsp;<a onclick="shopcar(${sessionScope.id})">我的购物车</a>&nbsp;|&nbsp;<a onclick="login(${sessionScope.id})">登录|注册</a>
            </div>
        </div>
    </div>
</div>
<div class="settlementContentCon">
    <div class="addressBox">
        <div class="topTitle">
            <div><h2>确认订单</h2></div>
        </div>
        <%-- <div class="addressInfo">
        <c:forEach items="${requestScope.address}" var="address">
            <dl class="addressActive"><dt>${address.name}<b class="phoneNum">${address.tel}</b></dt><dd>${address.zone}${address.addr}</dd></dl>
            <dl class="addAddress"><a onclick="openaddress();">添加新的收货地址</a></dl>
        </c:forEach>    
        </div> --%>
    </div>
    <div class="settlementInfoBox">
        
        <table class="table" style="width:1000px;height:150px;margin-left:150px">
        	<tr>
        		<td>确认订单信息</td>
            	<td class="firstTitle">商品信息</td>
            	<td>商品类型</td>
            	<td>单价</td>
            	<td>数量</td>
            	<td>金额</td>
            	<td>优惠方式</td>
        	</tr>
        	<c:forEach items="${requestScope.paylist}" var="pay">
            <tr class="payProduct" sid="${pay.id}">
            	<td><img style="width: 90px; height: 90px;" src="${pay.pic}" /></td>
                <td>${pay.fullname}</td>
                <td>${pay.name}</td>
                <td><span style="text-decoration:line-through">￥${pay.price}</span><br><br>￥${pay.nowprice}</td>
                <td class="count" count="${pay.count}">${pay.count}</td>
                <td class="amount">￥<fmt:formatNumber value="${pay.count*pay.nowprice}" pattern="#.##"/></td>
                <td>${pay.activity}</td>
            </tr>
            </c:forEach>
        </table>
        
        <ul class="tableTitle">
            <li class="firstTitle">订单其他信息</li>
        </ul>
        <ul class="otherInfo">
            <li class="message">给卖家的留言</li>
            <textarea rows="20" cols="60" placeholder="选填：填写内容已和卖家协商"></textarea>
            <li>运送方式：普通配送（免运费）<span>￥0.00</span></li>
            <li>运费险：送运费险<span>￥0.00</span></li>
        </ul>
    </div>
    <div class="checkoutBox">
        <ul class="checkoutInfo">
            <li>合计：<span>￥<fmt:formatNumber value="${allamount}" pattern="#.##"/></span></li>
            <li>配送至：山东省 青岛市 城阳区 城阳街道 春阳路 盈园国际商务中心 812</li>
            <li>收货人信息：${name}（${phone}）</li>
            <li><b>付款方式：</b><input type="checkbox"><b class="quickIcon"></b><b>快捷支付</b><input type="checkbox"><b class="weixinIcon"></b><b>微信支付</b></li>
        </ul>
        <button onclick="settlement()">提交订单</button>
    </div>
</div>
<div class="footerCon">
    <p><a>关于我们</a> | <a>合作伙伴</a> | <a>营销中心</a> | <a>廉正举报</a> | <a>联系客服</a> | <a>开放平台</a> | <a>诚征英才</a> | <a>联系我们</a> | <a>网站地图</a> | <a>法律声明</a> | <a>知识产权</a> | © 2003-2016 chihuo.com 版权所有</p>
    <p>网络文化经营许可证：浙网文[2013]0268-000号|增值电信业务经营许可证：京B2-20081001|信息网络传播视听节目许可证：1109364号|互联网违法和不良信息举报电话:400-800-8000</p>
</div>
</body>
</html>