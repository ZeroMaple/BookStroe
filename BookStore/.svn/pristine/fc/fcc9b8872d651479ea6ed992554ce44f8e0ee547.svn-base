<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息</title>
    <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/header.css" />
        <link rel="stylesheet" href="css/PersonalInformation.css">
<script type="text/javascript">
function button(){
	window.location.href="getAllUser.do?usereMail=${userInfo.usereMail}";
}
//创建XMLHttpRequest对象
var xmlHttp;
function createXmlHttpRequest() {
	try {
		//非IE内核时
		xmlHttp = new XMLHttpRequest();
	} catch (e) {
		//IE内核
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				alert("您的浏览器不支持ajax");
			}
		}
	}
}
//调用方法创建xmlhttpRequest对象
createXmlHttpRequest();

function myAJAX(id){
var usereMail=document.getElementById("usereMail").value;
var value=id.value;
var name=id.name;
	//对象的状态改变触发一个方法
	xmlHttp.onreadystatechange = callAjax;
	//获取用户输入的用户名
	//建立连接
	xmlHttp.open("POST","updateUser.do?usereMail="+usereMail+"&"+name+"="+value);
	//发送请求，不带参数
	xmlHttp.send(null);
}
function callAjax() {

	if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
		//xmlHttp.responseText读取服务器返回的参数
		var ico = document.getElementById("login_ic")
		if (xmlHttp.responseText == 1) {
			alert("修改成功！")
		}else{
			alert("修改成功！")
		} 
	}
}
</script>
</head>
<body>
<%@include file="headerpage/Header_user.jsp"%>

<div class="divfrom">
<form action="" method="post">
  <table style="color:black;" align="center" border="0" >
      <caption><h2>修改用户个人详细信息</h2></caption>
        <tr >
            <td style="color: black;"><h3>邮&nbsp;&nbsp;&nbsp;&nbsp;箱 </h3></td>
            <td> <input type="text" name="usereMail" value="${userInfo.usereMail }"  class="myinput" id="usereMail" onblur="myAJAX(this)" disabled="disabled"/></td>
            <td height="100%" width="200px" rowspan="3">
            <br>
            <h3>个人签名</h3>
            <textarea rows="10" cols="35" class="textarea" name="userContent" onblur="myAJAX(this)">  
    ${userInfo.userContent}</textarea>
            </td>
        </tr>
        <tr>
            <td><h3>密&nbsp;&nbsp;&nbsp;&nbsp;码 </h3></td>
             <td> <input type="text" name="userPassword"  value="${userInfo.userPassword }"  class="myinput" onblur="myAJAX(this)" /></td>
        </tr>
        <tr>
            <td><h3>用户名</h3></td>
             <td><input type="text" name="userName" value="${userInfo.userName }"  class="myinput" onblur="myAJAX(this)" /></td>
            
        </tr>
        <tr>
           <td><h3>电&nbsp;&nbsp;&nbsp;&nbsp;话</h3></td>
           <td> <input type="text" name="userPhone" value="${userInfo.userPhone }"  size=60  class="myinput"onblur="myAJAX(this)" /></td>
           <td>
           <br>
           <br>
                            年龄<input type="text" name="userAge" size="5" class="textarea" value="${userInfo.userAge}"onblur="myAJAX(this)"/>
           &nbsp;&nbsp;&nbsp;&nbsp;
                           性别<input type="text"size="5" name="userSex" class="textarea"value="${userInfo.userSex}"onblur="myAJAX(this)"/>
           </td>
        </tr>
         <tr>
         <td></td>
           <td colspan="2">
           <input type="button" onclick="button()" name="test" value="返回个人信息" style="background: red;width:100% ;height: 42px; font-size: 20px" class="update" />
           </td>
        </tr>
  </table>
  
 </form>
 </div>
</body>
</html>