<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
        <title>登录页面</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
        <link rel="stylesheet" href="css/style.css">
        <script type="text/javascript">
        function state() {
        	
			if( $("#state").val()!=""){
				alert("恭喜你激活成功！")
			}
		}
        function pruducts() {
			window.location.href="Login.jsp";
		}
        </script>
<title>登录页面</title>
</head >
<body onload="state()">
<input type="hidden" value="${state}" id="state">
<div class="page-container">
            <h1>商家登录</h1>
            <form action="getSellerLogin.do" method="post">
                <input type="text" name="SellerEmail" class="username" placeholder="用户名">
                <input type="password" name="SellerPassWord" class="password" placeholder="密码">
                <button type="submit">登录</button>
                <button type="button" onclick="pruducts()">我是用户</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href="Register.jsp"></a>
                </p>
            </div>
        </div>
		
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>
</body>
</html>