<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<title>Insert</title>
</head>
<body>
	<script>
		$.ajax({
			url:"shoppingCart.do",
			method:"POST",
			dataType:"json",
			data:{},
			success:function(data){
				console.log(data);
			},
			error:function(err){
				console.error(err);
			}
		});
	</script>
</body>
</html>