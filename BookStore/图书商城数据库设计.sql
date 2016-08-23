--用户实体类
CREATE TABLE USERS(
USERID INTEGER,--用户id
USERNAME VARCHAR2(100),--用户昵称
USERPASSWORD VARCHAR2(100),--用户密码
USEREMAIL VARCHAR2(100),--用户email
USERSTATE INTEGER DEFAULT 0,--状态
USERKEY varchar2(50),--秘钥
USERROLE VARCHAR2(20)check(USERROLE in( '普通用户','管理员')),--用户角色
USERUPDATE DATE--信息修改日期
)
--商城实体表
CREATE TABLE PRODUCTS(
PRODUCTID INTEGER,--商品id
PRODUCTNAME VARCHAR2(100),--商品名称
PRODUCTMONEY VARCHAR(20),--商品价格
PRODUCTSCOMMENT INTEGER,--商品数量数量
PRODUCTSIMAGE INTEGER--商品图片
PRODUCTINFORMATION VARCHAR2(200)--商品介绍
)
--订单实体类
CREATE TABLE ORDERS(
ORDERID INTEGER,--订单id
USERID INTEGER,--用户id（外键）
PRODUCTID INTEGER,--商品id（外键）
ORDERCOMMENT INTEGER,--订单数量
ORDERTELL VARCHAR2(30),--订单号
ORDERDATE DATE,--订单日期
ORDERCOMMENTS VARCHAR2(300)--订单评论
)
--收藏商品表（触发器生成）
CREATE TABLE   FAVORITES(
FAVORITESID INTEGER,--收藏品id
PRODUCTID INTEGER,--商品id
USERID INTEGER --用户id
)
--序列
-- Create sequence 
create sequence SEQ_FAV
minvalue 1
maxvalue 9999
start with 41
increment by 1
cache 20;
--用户序列
-- Create sequence 
create sequence SEQ_USERS
minvalue 1
maxvalue 9999
start with 41
increment by 1
cache 20
cycle;
--用户表主键触发器
create or replace trigger trig_users
  before insert on users  
  for each row
declare
  -- local variables here
begin
  select seq_users.nextval into:new.userid from dual;
end trig_users;
--收藏商品表主键触发器
create or replace trigger trig_fav
  before insert on favorites  
  for each row
declare
  -- local variables here
begin
  select SEQ_FAV.NEXTVAL into:new.FAVORITESID from dual;
end trig_fav;
--为用户自动生成收藏商品信息触发器
create or replace trigger trig_favtable
  before insert on users  
  for each row
declare
  -- local variables here
create or replace trigger trig_favtable
  before insert on users  
  for each row
declare
  -- local variables here
begin
  insert into FAVORITES(USERID)values
  (:new.userid);
end trig_favtable;
--查询测试sql语句
select *from USERS for update
select *from FAVORITES
drop table USERS 
delete USERS
delete FAVORITES
select * from users where userid=3
/
