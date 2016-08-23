<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" href="css/register.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<!-- AJAX 注册信息验证start --==================================-->
<script type="text/javascript">
var reg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
function testJq() {
		$("#lbemail").html("");
		var usereMail = $("#email").val();
		if(usereMail==""){
			$("#lbemail").css("color","red");
			$("#lbemail").html("邮箱不允许为空！");
			return ;
		}
	//邮箱正则表达式
        if(reg.test(usereMail)){
		       }else{
			  $("#lbemail").css("color","red");
		        $("#lbemail").html("*邮箱不合法");
		        return;
		       }
		$.ajax({
			url:"look.do",
			type:"post",
			dataType:"text",
			data:"usereMail="+usereMail,
			success:function(data){
				if(data ==1){
					$("#lbemail").html("√");
					$("#lbemail").css("color","turquoise");

				}else{
					$("#lbemail").html("用户已存在！");
					$("#lbemail").css("color","red");
				}
			},
			error:function(){
				alert("请求失败");
			}
		});
		
	}

function closetest(){
	$("#lbemail").html("");	
}
function lbpassword(){
	$("#lbpassword").html("");	
}
function lbuserName() {
	$("#lbuserName").html("");	
	
}
function lbuserPhone(){
	$("#lbuserPhone").html("");	
}
function lbuserPasswordp(){
	$("#lbuserPasswordp").html("");	
}
function rownull(id){
	if(id.value==""){
		if(id.name=="userPassword"){
			var lbpassword=document.getElementById("lbpassword");
			lbpassword.style.color="red";
			lbpassword.style.fontSize="14px";
			lbpassword.innerHTML ="密码不允许为空";
			return;
		}
		if(id.name=="userName"){
			var lbuserName=document.getElementById("lbuserName");
			lbuserName.style.color="red";
			lbuserName.style.fontSize="14px";
			lbuserName.innerHTML ="用户不允许为空";	
			return;
		}
		if(id.name=="userPhone"){
			var lbuserPhone=document.getElementById("lbuserPhone");
			lbuserPhone.style.color="red";
			lbuserPhone.style.fontSize="14px";
			lbuserPhone.innerHTML ="电话不允许为空";
			return;
		}
	}else{
	
		if(id.name=="userPassword"){
			var lbpassword=document.getElementById("lbpassword");
			lbpassword.style.color="turquoise";
			lbpassword.style.fontSize="14px";
			lbpassword.innerHTML ="√";
			return;
		}
		if(id.name=="userName"){
			var lbuserName=document.getElementById("lbuserName");
			lbuserName.style.color="turquoise";
			lbuserName.style.fontSize="14px";
			lbuserName.innerHTML ="√";	
			return;
		}
		if(id.name=="userPhone"){
			var lbuserPhone=document.getElementById("lbuserPhone");
			lbuserPhone.style.color="turquoise";
			lbuserPhone.style.fontSize="14px";
			lbuserPhone.innerHTML ="√";
			return;
		}
	}
	if(id.name=="userPasswordp"){
		var password=document.getElementById("password").value;
		var name=id.value;
		var lbuserPasswordp=document.getElementById("lbuserPasswordp");
		if(name !=password){
			lbuserPasswordp.style.color="red";
			lbuserPasswordp.style.fontSize="14px";
			lbuserPasswordp.innerHTML ="与原密码不一致";
		}else{
			lbuserPasswordp.style.color="turquoise";
			lbuserPasswordp.style.fontSize="14px";
			lbuserPasswordp.innerHTML ="√";	
		}
		
	}
}
//表单提交验证
function checkfrom(){
	var lbpassword=document.getElementById("lbpassword").textContent;
	var lbemail=document.getElementById("lbemail").textContent;
	var lbuserPasswordp=document.getElementById("lbuserPasswordp").textContent;
	var lbuserName=document.getElementById("lbuserName").textContent;
	var lbuserPhone=document.getElementById("lbuserPhone").textContent;
	
	if(lbpassword !="√" || lbemail !="√"||lbuserPasswordp!="√"||lbuserName!="√"||lbuserPhone!="√"){
		alert("你的注册信息不规范，请检查好再注册！！")
		return false;
	}else{
		return true;
	}
	return false
}
</script>
</head>
<body>
<%@include file="headerpage/Header_user.jsp"%>
		<!-- 引入header头部 -->
	<center>
	<form action="adduser.do" method="post" onsubmit="return checkfrom()">
		<table width="36.5%">
		<tr>
		  <td><br>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</td>
		  <td><input type="text"onfocus="closetest()" onblur="testJq()"id="email" name="usereMail"  class="myinput"/></td>
		  <td width="100px"><br><label id="lbemail" style="color: turquoise; padding-top: 20px"><br>*</label></td>
		</tr>
		<tr>
			<td><br>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
			<td><input type="password" onfocus="lbpassword()" name="userPassword" onblur="rownull(this)" id="password"class="myinput" /></td>
			<td><br><label id="lbpassword"style="color: turquoise;">*</label></td>
		</tr>
		<tr>
			<td><br>确认密码:</td>
			<td><input type="password" onfocus="lbuserPasswordp()" name="userPasswordp" onblur="rownull(this)" id="userPasswordp"class="myinput" /></td>
			<td><br><label id="lbuserPasswordp" style="color: turquoise;">*</label></td>
		</tr>
		<tr>
			<td><br>用&nbsp;户&nbsp;名:</td>
			<td><input type="text" onfocus="lbuserName()" onblur="rownull(this)" id="username"name="userName"class="myinput" /></td>
			<td><br><label id="lbuserName" style="color: turquoise;">*</label></td>
		</tr>
		<tr>
			<td><br>电&nbsp;&nbsp;&nbsp;话:</td>
			<td><input type="text"onfocus="lbuserPhone()" onblur="rownull(this)" id="userPhone"name="userPhone" class="myinput"/></td>
			<td><br><label id="lbuserPhone" style="color: turquoise;">*</label></td>
		</tr>
		<tr>
		<td></td>
		<td>
		<br>
		<input type="reset" value="重置" class="reset"onclick="localtion()" class="register"style="width: 100px;height: 40px"/> 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit"value="注册" class="submit"style="width: 100px;height: 40px" />
		</td>
		<td></td>
		</tr>
	   </table>
	 </form>
 </center>
</body>
</html>
