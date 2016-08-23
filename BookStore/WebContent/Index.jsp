<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书商城</title>
<!--关键字-->
<meta name="Keywords" content="大学生信息平台" />
<!--描述-->
<meta name="Description" content="一个关于在校大学生兼职考证考研网站" />

<!--base,link,style,script-->
<!--引用外部头部区域样式文件
			link:引用外部资源链接，引用外部样式、外部脚本、外部小图标
			rel:设定引用文档与该网页文档关系
			type:设定引用文档类型
			href:设定引用资源路径

			=:赋值
			""：储存值
		-->

<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="js/index.js"></script>
</head>
<!--网页身体区域-->
<body onload="show()">
<%@include file="headerpage/Header_user.jsp"%>
	<div class="main">
		<!--图片区域 开始-->
		<div class="m_piclist" onload="image()">
			<img src="img/1.jpg" id="img1"
				style="display: none; height: 398px; width: 100%;" /> <img
				src="img/2.jpg" id="img2"
				style="display: none; height: 398px; width:  100%;" /> <img
				src="img/3.jpg" id="img3"
				style="display: none; height: 398px; width: 100%;" /> <img
				src="img/4.jpg" id="img4"
				style="display: none; height: 398px; width:  100%;" /> <img
				src="img/5.jpg" id="img5"
				style="display: none; height: 398px; width:  100%;" /> <img
				src="img/6.jpg" id="img6"
				style="display: none; height: 398px; width:  100%;" />
		</div>
		<!--图片区域 结束-->
		<!--图片导航按钮 开始-->
		<div class="m_nav">
			<span><a href="#">1</a></span> <span><a href="#">2</a></span> <span><a
				href="#">3</a></span> <span><a href="#">4</a></span> <span><a
				href="#">5</a></span> <span><a href="#">6</a></span>
		</div>
		<!--图片导航按钮 结束-->
		<!--图片左右切换按钮  开始-->
		<div class="btn">
			<a href="#" class="prev" onmousedown="prev()">&lt</a> 
			<a href="#"
				class="next" onmousedown="prev()">&gt</a>
		</div>
		<!--图片左右切换按钮  结束-->

		<!--轮播图  结束-->
	</div>
	<!--主体区域 结束-->
	<div class="center">
		<table width="100%" align="center">
			<tr>
			 <c:forEach items="${products}" var="s" varStatus="status">
			 <td>
			    <div class="cert">
					    <div class="cert_top" align="left">
			          ${s.productName}
					    </div>
						<div class="cert_last" align="center">
							  <img class="bookimage" alt="" src="img/bookimage/${s.PRODUCTSIMAGE}">
					  </div>
					  <div class="last"><div class="p1"><a href="#">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  ${s.productInformation}</a></div></div>
					  <div class="goshopping" >￥
						  <font color="red" size="6"style="padding-top: 10px">
						      ${s.productMoney}
						      <a href="goshopping.do?productId= ${s.productId}" height="34px" width="60%" style="margin-left: 22px" >
						      <img  src="img/gologin.jpg" height="34px" width="60%">
					         </a>
						 </font>
					  </div>
				 </div>	 
			 </td>
			 </c:forEach>
			</tr>
		 <tr>
			 <c:forEach items="${products}" var="s">
			 <td>
			    <div class="cert">
					    <div class="cert_top" align="left">
			          ${s.productName}
					    </div>
						<div class="cert_last" align="center">
							  <img class="bookimage" alt="" src="img/bookimage/${s.PRODUCTSIMAGE}">
					  </div>
					  <div class="last"><div class="p1"><a href="#">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  ${s.productInformation}</a></div></div>
					  <div class="goshopping" >￥
						  <font color="red" size="6"style="padding-top: 10px">
						      ${s.productMoney}
						      <a href="GoShopping.jsp" height="34px" width="60%" style="margin-left: 22px" >
						      <img  src="img/gologin.jpg" height="34px" width="60%">
					         </a>
						 </font>
					  </div>
				 </div>	 
			 </td>
			 </c:forEach>
			</tr>
			<tr>
			 <c:forEach items="${products}" var="s">
			 <td>
			    <div class="cert">
					    <div class="cert_top" align="left">
			          ${s.productName}
					    </div>
						<div class="cert_last" align="center">
							  <img class="bookimage" alt="" src="img/bookimage/${s.PRODUCTSIMAGE}">
					  </div>
					  <div class="last"><div class="p1"><a href="#">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  ${s.productInformation}</a></div></div>
					  <div class="goshopping" >￥
						  <font color="red" size="6"style="padding-top: 10px">
						      ${s.productMoney}
						      <a href="GoShopping.jsp" height="34px" width="60%" style="margin-left: 22px" >
						      <img  src="img/gologin.jpg" height="34px" width="60%">
					         </a>
						 </font>
					  </div>
				 </div>	 
			 </td>
			 </c:forEach>
			</tr>
		</table>
	</div>
	<div class="finally">
	</div>
      <div class="finally_last">
      	<center>
		  <p style="margin-bottom:10px;"><!--[if IE]><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.sogou.com');">把搜狗设为首页</a>&nbsp;-&nbsp;
            <![endif]--><a href="http://fuwu.sogou.com/" target="_blank">企业推广</a>&nbsp;-&nbsp;
            <a href="http://corp.sogou.com/" target="_blank">关于搜狗</a>&nbsp;-&nbsp;
            <a href="http://www.sogou.com/docs/terms.htm?v=1">免责声明</a>&nbsp;-&nbsp;
            <a href="http://fankui.help.sogou.com/index.php/web/web/index/type/4" target="_blank">意见反馈</a><br />
            <br />
            <label style="color: #B3B3B3;">
            	@2016</span>&nbsp;University Information  Serious&nbsp;-&nbsp;
            <a href="http://www.miibeian.gov.cn" target="_blank" class="g">京ICP证050897号</a>&nbsp;-&nbsp;<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000025" target="_blank" class="ba">京公网安备11000002000025号</a>
          </label>
		  </p>
    </center>
      </div>
</body>

</html>
<!--主体结束-->