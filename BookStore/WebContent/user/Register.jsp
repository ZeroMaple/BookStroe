<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" href="../css/register.css" />
<link rel="stylesheet" href="../css/index.css" />
<script type="text/javascript" src="../js/register.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<!-- AJAX 注册信息验证start --==================================-->
<script type="text/javascript">
	function testJq() {
		//var userName = document.getElementById("userName").value;
		var email = $("#email").val();
		if(email==""){
			$("#lbemail").html("不允许为空！");
			return;
		}
		$("#lbemail").html("");
		$.ajax({
			url:"look.do",
			type:"post",
			dataType:"text",
			data:"usereMail="+email,
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

</script>
<!-- AJAX 注册信息验证end --====================================-->
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<div class="clouds1">
		<!-- 引入header头部 -->
		<div class="center1">
			<form method="post" action="adduser.do"
				onsubmit="return checkfrom()">
				<label>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</label> <input type="text"
					onfocus="check(this)" onblur="testJq()" id="email" name="usereMail" /><label
					id="lbemail" style="color: turquoise; color: red; font-size: 14px"></label><br />
				<br /> <label>密&nbsp;&nbsp;&nbsp;&nbsp;码:</label> <input
					type="password" onfocus="check(this)" name="userPassword"
					onblur="onbl(this)" id="password" /><label id="lbpassword"
					style="color: turquoise;" />*</label><br /> <br />
				<div></div>
				<label>确认密码:</label> <input type="password" onfocus="check(this)"
					onblur="onbl(this)" id="passwordp" /><label id="lbpasswordp"
					style="color: turquoise;">*</label><br /> <br />
				<div></div>

				<label>用&nbsp;户&nbsp;名: <label> <input type="text"
						onfocus="check(this)" onblur="onbl(this)" id="username"name="userName" /><label id="lbuser" style="color: turquoise;">*</label><br/><br />	
				<label>电 &nbsp;&nbsp;&nbsp;话: <label> <input type="text"
						onfocus="check(this)" onblur="onbl(this)" id="srudentPhone"name="studentPhone" /><br /><br />
						 <label>性 &nbsp;&nbsp;&nbsp;别:</label>&nbsp; <select
						style="width: 262px; height: 30px;" name="userSex"><option
								style="text-align: right;">男</option>
							<option>女</option></select> <br /> <br /> <label>生&nbsp;&nbsp;&nbsp;&nbsp;日:&nbsp;</label><input
						type="text" name="studentDate" placeholder="1989-01-01" /> <br />
						<br /> <input type="reset" value="重置" class="reset"
						onclick="localtion()" class="register" /> <input type="submit"
						value="注册" class="submit" class="denglu" />
			</form>
		</div>
</body>
</html>
