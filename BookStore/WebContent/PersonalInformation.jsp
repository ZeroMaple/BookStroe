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
	window.location.href="getAllUpdateUser.do?usereMail=${userInfo.usereMail }";
}
</script>

</head>
<body>
<%@include file="headerpage/Header_user.jsp"%>

<div class="divfrom">
<form action="" method="post">
  <table style="color:black;" align="center" border="0" >
      <caption><h2>用户个人详细信息</h2></caption>
        <tr >
            <td style="color: black;"><h3>邮&nbsp;&nbsp;&nbsp;&nbsp;箱 </h3></td>
            <td> <input type="text" name="test" value="${userInfo.usereMail }"  class="myinput" disabled="disabled"/></td>
            <td height="100%" width="200px" rowspan="3">
            <br>
            <h3>个人签名</h3>
            <textarea rows="10" cols="35" class="textarea" disabled="disabled">
    
    ${userInfo.userContent}</textarea>
            </td>
        </tr>
        <tr>
            <td><h3>密&nbsp;&nbsp;&nbsp;&nbsp;码 </h3></td>
             <td> <input type="text" name="test"  value="${userInfo.userPassword }"  class="myinput" disabled="disabled" /></td>
        </tr>
        <tr>
            <td><h3>用户名</h3></td>
             <td><input type="text" name="test" value="${userInfo.userName }"  class="myinput" disabled="disabled" /></td>
            
        </tr>
        <tr>
           <td><h3>电&nbsp;&nbsp;&nbsp;&nbsp;话</h3></td>
           <td> <input type="text" name="test" value="${userInfo.userPhone }"  size=60  class="myinput" disabled="disabled" /></td>
           <td>
           <br>
           <br>
                            年龄<input type="text" size="5" class="textarea" value="${userInfo.userAge}"disabled="disabled"/>
           &nbsp;&nbsp;&nbsp;&nbsp;
                           性别<input type="text"size="5"class="textarea"value="${userInfo.userSex}"disabled="disabled"/>
           </td>
        </tr>
         <tr>
         <td></td>
           <td colspan="2">
           <input type="button" onclick="button()" name="test" value="修改用户信息" style="background: red;width:100% ;height: 42px; font-size: 20px" class="update" />
           </td>
        </tr>
  </table>
  
 </form>
 </div>
</body>
</html>