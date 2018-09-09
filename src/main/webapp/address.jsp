<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ADDRESS</title>
<script type="text/javascript" src="js/jsAddress.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"> </script>
<script type="text/javascript" src="layui/lay/modules/layer.js"></script>
<script type="text/javascript">

$(function(){
	$(".zone1").change(function(){
		var zone1 = $(this).val();
	});
	$(".zone2").change(function(){
		var zone2 = $(this).val();
	});
	$(".zone3").change(function(){
		var zone3 = $(this).val();
	});
	
	/* $(".submit").on("click",function(){
	}); */
})

	$(document).ready(function(){
		addressInit('cmbProvince', 'cmbCity', 'cmbArea');  
		});
		
	var zone = "";
	function insertaddress(){
		var zone1 = $(".zone1").val();
		var zone2 = $(".zone2").val();
		var zone3 = $(".zone3").val();
		zone = zone1 + zone2 + zone3;
		name = $(".name").val();
		tel = $(".tel").val();
		addr = $(".addr").val();
		$.post("insertaddress",{name:name,tel:tel,zone:zone,addr:addr},function(json){
			if(json.status>0){
				alert(json.text);
				parent.location.reload();
			}
		});
	}
	
</script>

</head>
<body>
<div style="text-align:center;">
<li style="list-style:none" required="required">
<span>收货人姓名：
<input class="name" style="width:198px;height:30px;margin-top:10px" type="text" name="name" value=""/>
</span>
</li>
<li style="list-style:none">
<span>收货人电话：
<input class="tel" style="width:198px;height:30px;margin-top:10px" type="number" name="tel" value=""/>
</span>
</li>
<li style="list-style:none">
<select class="form-control zone1" id="cmbProvince" name="cmbProvince" style="width:300px;height:30px;margin-top:15px"></select>
</li>
<li style="list-style:none">
<select class="form-control zone2" id="cmbCity" name="cmbCity" style="width:300px;height:30px;margin-top:10px"></select>
</li>
<li style="list-style:none">
<select class="form-control zone3" id="cmbArea" name="cmbArea" style="width:300px;height:30px;margin-top:10px"></select>
</li>
<li style="list-style:none">
<input type="text" class="addr" name="addr" value="" placeholder="请输入详细地址..." style="width:300px;height:30px;margin-top:10px"/>
</li>
<input type="button" onclick="insertaddress()" value="提交" style="background-color:#f44336;margin-top:15px;border-radius:5px;font-size:20px;border:none" />
</div>
</body>
</html>