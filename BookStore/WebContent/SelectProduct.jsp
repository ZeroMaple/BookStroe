<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>页面收索</title>
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>
<body>
<%@include file="headerpage/Header_user.jsp"%>
<center>
<table border="1" width="90%"style="margin-top: 30px">
<c:forEach items="${selectProduct}" var="k">
<tr height="100px">
<td><img alt="" src="img/bookimage/${k.PRODUCTSIMAGE}" width="100PX" height="80PX"></td>
<td>${k.productName}</td>
<td>${k.productInformation}</td>
<td>￥${k.productMoney}</td>
<td>加入购物车||结算</td>
</tr>
</c:forEach>
</table>
<div style="margin-left: 76%;font-size: 18px" >
			<a href="UserManageServlet?curPage=0">首页</a>
			<a href="UserManageServlet?curPage=${requestScope.pageNow-1}">上一页</a>
		    <a href="UserManageServlet?curPage=${requestScope.pageNow+1}">下一页</a>
		    <a href="UserManageServlet?curPage=${requestScope.lastpage} ">尾页</a>
</div>
</center>
</body>
</html>