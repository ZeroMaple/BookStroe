<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品购物车</title>
<link rel="stylesheet" type="text/css" href="css/header.css" />
 <%  //request.getSession().getAttribute("Longin"))
   if (request.getSession().getAttribute("login") == null) {
    response.sendRedirect("Login.jsp");
   }
  %>
</head>
<body>
<%@include file="headerpage/Header_user.jsp"%>
<center>
<table height="300px" width="65%" align="center" style="margin-top: 50px" border="1">
<tr>
<td rowspan="3" width="240px" ><img class="bookimage" alt="" src="img/bookimage/${productInformation.PRODUCTSIMAGE}"width="260px" height="300px"></td>
<td align="center"><h2>${productInformation.productName}</h2></td>
<td></td>
</tr>
<tr>
<td rowspan="2" width="25%" height="100px" style="padding-bottom: 100px;font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;${productInformation.productInformation}</td>
<td></td>
</tr>
<tr>
<td align="center"></td>
<td></td>
</tr>
</table>
</center>
</body>
</html>