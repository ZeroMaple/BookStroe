<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>个人注册</title>
		<link rel="stylesheet" href="css/zhuce.css" />
		<script language="JavaScript"  src="js/regdit.js"></script>
		<link rel="stylesheet" type="text/css" href="css/header.css" />
	</head>
	<body>
	<%@include file="headerpage/Header_user.jsp"%>
		<div class="aa">
		<div class="cetent">
			<div class="cetent1">
				  <label>注 册 邮 箱</label>&nbsp;
				<tr></tr><input type="text" autocomplete="off" class="myiput" id="user" maxlength="20" placeholder="您的账户名和登录名" onblur=" usercheck(this)" onfocus="myFocus(this)"/></tr>
			      <div id="username"></div> 
			</div>
			<div class="cetent2">
				<label>设 置 密 码</label>
				<input type="password" size="40" class="myiput" id="pw" autocomplete="off" maxlength="20" placeholder="建议至少使用两种字符组合" onblur="pwchek(this)"onfocus="myFocus(this)"/>
				<div id="divpw"></div>
			</div>
			<div class="cetent3">
				  <label>确 认 密 码</label>
				<input type="password" size="40" class="myiput" id="pw1" autocomplete="off" maxlength="20" placeholder="请再次输入密码" onblur="pwchek1(this)"onfocus="myFocus(this)"/>
				<div id="divpw1"></div>
			</div>
			<div class="cetent4">
				  <label><select>
				  	<option>中國+86</option>
				  	<option>台灣+886</option>
				  	<option>香港+852</option>
				  	<option>馬來西亞+60</ption>
				  	<option>新加坡+65</option>
				  </select></label>
				<input type="text" size="40"  class="myiput" autocomplete="off" id="pt" maxlength="20" placeholder="请输入手机号..." onblur="ptchek(this)"onfocus="myFocus(this)"/>
			<div id="divpt"></div>
			</div>
			<div class="cetent8">
				</p><input type="checkbox" checked="checked" name="sex" />我已阅读并同意<a href="https://reg.jd.com/reg/person?ReturnUrl=http%3A%2F%2Fwww.jd.com">《图书商城用户注册协议》</a>
			</div>
			<input type="button" value="立即注册" class="cetent9" />
		</div> 
		</div>
		<div class="end"></div>
	</body>
</html>