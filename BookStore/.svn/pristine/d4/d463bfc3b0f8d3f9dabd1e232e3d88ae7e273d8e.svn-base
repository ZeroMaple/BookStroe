<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单</title>
</head>
<style>
    div {
        cursor: pointer;
    }
    section > div {
        width: 90%;
        margin:0 auto;
    }
    section > div {
        border:1px solid #000000;
    }
    section > div > div {
        float: left;
        line-height: 60px;
        text-align: center;
    }
    section > div > div:first-child {
        width: 10%;
        line-height: 0px;
    }

    section > div > div:first-child > img{
        width: 100%;
    }
    section > div > div:nth-child(2) {
        width: 30%;
    }
    section > div > div:nth-child(3) {
        width: 20%;
    }
    .gw_num > input {
        width: 50% !important;
    }
    section > div > div:nth-child(4) {
        width: 10%;
    }
    section > div > div:nth-child(5) {
        width: 20%;
    }

    section > div > div:nth-child(5):hover {
        color: red;
    }
    section > div > div:last-child {
        width: 8%;
    }
    .gw_num{border: 1px solid #dbdbdb;width: 110px;line-height: 26px;overflow: hidden;margin-top: 30px;}
    .gw_num em{display: block;height: 26px;width: 26px;float: left;color: #7A7979;border-right: 1px solid #dbdbdb;text-align: center;cursor: pointer;}
    .gw_num .num{display: block;float: left;text-align: center;font-style: normal;font-size: 14px;border: 0;}
    .gw_num em.add{float: right;border-right: 0;border-left: 1px solid #dbdbdb;}
    section > div:after {
        content: '\20';
        display: block;
        clear: both;
    }
</style>
<body>
    <section>
        <div>
            <div>
                <img src="shopcar/foodshop.jpg" alt="">
            </div>
            <div>
                <p>xxx系列xxx商品xxx名字</p>
            </div>
            <div class="gw_num">
                <em class="jian">-</em>
                <input type="text" value="1" class="num"/>
                <em class="add">+</em>
            </div>
            <div>
                <p>￥5.00</p>
            </div>
            <div>
                <p>删除</p>
            </div>
            <div>
                <p>结算 ></p>
            </div>
        </div>
    </section>
</body>
<script src="shopcar/jquery-1.9.1.min.js"></script>
<script>
    $(document).ready(function(){
        $(".add").click(function(){
            var n=$(this).prev().val();
            var num=parseInt(n)+1;
            if(num==0){ return;}
            $(this).prev().val(num);
        });
        $(".jian").click(function(){
            var n=$(this).next().val();
            var num=parseInt(n)-1;
            if(num==0){ return}
            $(this).next().val(num);
        });
    })
</script>
</html>