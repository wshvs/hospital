<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线预约挂号系统</title>
<link rel="stylesheet" type="text/css" href="style/easyui.css">
<link rel="stylesheet" type="text/css" href="style/icon.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/init_main.js"></script>
</head>
<body class="easyui-layout">
    <div data-options="region:'north'" style="height:85px; background-color:#E0EDFF">
	<div align="left" style="float: left; height:80px"><img src="images/logo_1.png"></div>
	<div style="padding-top: 50px;padding-right: 20px; float:right">当前用户：&nbsp;<font color="red" >${userName}</font>
	<a href="login.jsp" style="margin-left:20px;text-decoration:none">注销登录</a></div>
	</div>
	
	<div data-options="region:'center'">
		<div class="easyui-tabs" data-options="fit:'true', border:'false'" id="tabs">
			<div title="首页"  data-options="iconCls:'icon-welcome'">
				<div align="center" style="padding-top: 15px;">
				<font color="blue" size="10">欢迎使用在线预约挂号系统</font>
				<img src="images/firstPage.png">
				</div>
			</div>
		</div>
	</div>
	
	<div data-options="region:'west', split:'true'" style="width: 150px;" title="预约导航">
		<ul id="tree"></ul>
	</div>
</body>
</html>