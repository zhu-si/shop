<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ADDRESS</title>
<script type="text/javascript" src="js/jsAddress.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"> </script>

<script type="text/javascript">

	$(document).ready(function(){
		addressInit('cmbProvince', 'cmbCity', 'cmbArea');  
		});
	
</script>

</head>
<body>
<div style="text-align:center;">
<li style="list-style:none">
<select class="form-control" id="cmbProvince" name="cmbProvince" style="width:300px;height:30px;margin-top:15px"></select>
</li>
<li style="list-style:none">
<select class="form-control" id="cmbCity" name="cmbCity" style="width:300px;height:30px;margin-top:10px"></select>
</li>
<li style="list-style:none">
<select class="form-control" id="cmbArea" name="cmbArea" style="width:300px;height:30px;margin-top:10px"></select>
</li>
</div>
</body>
</html>