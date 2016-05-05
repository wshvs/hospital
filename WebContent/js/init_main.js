$(function(){
	//tab数据
	var treeData=[{
		text:"在线预约挂号系统",
		iconCls:"icon-menu",
		children:[{
			text:"个人资料",
			iconCls:"icon-user",
			attributes:{
				url:"userInfo.jsp"
			}
		},{
			text:"在线挂号",
			iconCls:"icon-manage",
			attributes:{
				url:"register.jsp"
			}
		},{
			text:"查看预约",
			iconCls:"icon-chart",
			attributes:{
				url:"chart.jsp"
			}
		}]
	}];
		
	//实例化树菜单
	$("#tree").tree({
		data:treeData,
		lines:true,
		onClick:function(node){
			if(node.attributes){
				openTab(node.text,node.attributes.url,node.iconCls);
			}
		}
	});
		
	//新增Tab
	function openTab(text,url,iconCls){
		if($("#tabs").tabs('exists',text)){
			$("#tabs").tabs('select',text);
		}else{
			var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
			$("#tabs").tabs('add',{
				title:text,
				closable:true,
				content:content,
				iconCls:iconCls,
			});
		}
	}
});