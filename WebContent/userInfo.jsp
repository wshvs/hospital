<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人资料管理</title>
<link rel="stylesheet" type="text/css" href="style/easyui.css">
<link rel="stylesheet" type="text/css" href="style/icon.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
</head>
<body style="margin:5px">
    <table id="dg" title="个人资料" class="easyui-datagrid" data-options="fitColumns=:true, pagination:true, rownumbers:true, url:'patient', fit:true, toolbar:'#tb'">
    <thead>
    <tr>
    <th data-options="field:'cb', checkbox:true"></th>
	<th data-options="field:'userID', hidden:true" width="100" align="center">用户ID</th>
	<th data-options="field:'userName'" width="100" align="center" >姓名</th>
	<th data-options="field:'sex'" width="100"  align="center">性别</th>
	<th data-options="field:'birthday'" width="100" align="center">出生日期</th>
	<th data-options="field:'idCard'" width="200" align="center">身份证号</th>
	<th data-options="field:'tel'" width="100" align="center">联系电话</th>
	<th data-options="field:'address'" width="300" align="center">家庭住址</th>
	</tr>
	</thead>
	</table>
</body>
</html>