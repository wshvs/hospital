<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="style/alogin.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
</head>
<script type="text/javascript">
	function resetValue(){
		document.getElementById("userName").value="";
		document.getElementById("password").value="";
	}
	
	function loadimage(){
		document.getElementById("randImage").src = "image.jsp?"+Math.random();
	}
</script>
<body>
<form id="form" action="login" method="post">
    <div class="Main">
        <ul>
            <li class="top"></li>
            <li class="top2"></li>
            <li class="topA"></li>
            <li class="topB"><span>
                <img src="images/login/logo.png" alt="" style="" />
            </span></li>
            <li class="topC"></li>
            <li class="topD">
                <ul class="login">
                    <li><span class="left">用户名:</span> 
                        <input type="text" value="" name="userName" id="userName"/>  
                    </li>
                    <li><span class="left">密    码:</span>
                       <input type="password" value="" name="password" id="password"/>  
                    </li>
                    <li><span class="left">验证码:</span>
                       <input type="text" value="" name="imageCode" id="imageCode" size="10"/>
                       <img onclick="loadimage()" title="看不清？换一张" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" style="vertical-align:middle;">
                    </li>
                    <li><span style="margin-left:25px"><font color="red" size=4>${error}</font></span></li>
                </ul>
            </li>
            <li class="topE"></li>
            <li class="middle_A"></li>
            <li class="middle_B"></li>
            <li class="middle_C">
            <span style="margin:15px"><input type="submit" value="登录"/></span>
            <span style="margin:10px"><input type="button" value="重置" onclick="resetValue()"/></span>
            </li>
            <li class="middle_D"></li>
            <li class="bottom_A"></li>
            <li class="bottom_B">
            </li>
        </ul>
    </div>
    </form>
</body>
</html>