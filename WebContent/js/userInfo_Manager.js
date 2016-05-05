var url;
//打开新对话框
function openPatientAddDialog(){
	//在勾选情况下点击新增要先清除数据
	resetValue();
	$("#dlg").dialog("open").dialog("setTitle","编辑个人资料");
	url="patient!save";//为url赋值
}
//重置对话框内数据
function resetValue(){
	$("#userID").val("");
	$("#userName").val("");
	$("#sex").combobox("setValue","");
	$("#birthday").datebox("setValue","");
	$("#idCard").combobox("setValue","");
	$("#tel").val("");
	$("#address").val("");
}
//关闭对话框
function closePatientDialog(){
	$("#dlg").dialog("close");
	resetValue();
}
//提交新增患者数据
function savePatient(){
	$("#fm").form("submit",{
		url:url,
		onSubmit:function(){
			if($('#sex').combobox("getValue")==""){
				$.messager.alert("系统提示","必须选择性别");
				return false;
			}
			if($('#userId').combobox("getValue")==""){
				$.messager.alert("系统提示","必须填写用户ID");
				return false;
			}
			return $(this).form("validate");
		},
		success:function(result){
			if(result.errorMsg){
				$.messager.alert("系统提示",result.errorMsg);
				return;
			}else{
				$.messager.alert("系统提示","保存成功");
				resetValue();
				$("#dlg").dialog("close");
				$("#dg").datagrid("reload");
			}
		}
	});
}
//删除选中的患者数据
function deletePatient(){
	//获得选中数据对象
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length==0){
		$.messager.alert("系统提示","请选择要删除的数据！");
		return;
	}
	var strIds=[];//要删除的序号组合
	for(var i=0;i<selectedRows.length;i++){
		strIds.push(selectedRows[i].patientId);
	}
	var ids=strIds.join(",");
	$.messager.confirm("系统提示","确定要删除<font color=red>"+selectedRows.length+"</font>吗？",function(r){
		if(r){
			$.post("patient!delete",{delIds:ids},function(result){
				if(result.success){
					$.messager.alert("系统提示","已成功删除<font color=red>"+result.delNums+"</font>！");
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert('系统提示',result.errorMsg);
				}
			},"json");
		}
	});
}
//修改个人资料
function openPatientModifyDialog(){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert("系统提示","请选择您要编辑的内容！");
		return;
	}
	var row=selectedRows[0];
	$("#dlg").dialog("open").dialog("setTitle","编辑个人资料");
	$("#userID").val(row.userID);
	$("#userName").combobox("setValue",row.sex);
	$("#birthday").datebox("setValue",row.birthday);
	$("#userId").combobox("setValue",row.userId);
	$("#patientDesc").val(row.patientDesc);
	$("#tel").val(row.tel);
	$("#idNumber").val(row.idNumber);
	url="patient!save?patientId="+row.patientId;
}
//查询符合条件的用户
function searchPatient(){
	$('#dg').datagrid('load',{
		s_patientName:$('#s_patientName').val(),
		s_sex:$('#s_sex').combobox("getValue"),
		s_bbirthday:$('#s_bbirthday').datebox("getValue"),
		s_ebirthday:$('#s_ebirthday').datebox("getValue"),
		s_userId:$('#s_userId').combobox("getValue")
	});
}
//倒出excel数据
function exportPatient(){
	$('#export').form("submit",{
		url:"patient!exportPatient"
	})
	//window.location.href="employee!ExportEmployee";
}