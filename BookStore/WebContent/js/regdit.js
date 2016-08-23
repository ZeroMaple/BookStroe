function myFocus(t){
	t.style.backgroundColor="#FFCC80";
	t.placeholder="";
}
function usercheck(id){
	var user=id.value
	var username=document.getElementById("username")
	id.style.background="#FFF"
	if(user==""){
		username.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*用户名不能为空"
		username.style.color="red"
		username.style.fontSize="12px";
		return false
	}
	if(user.length<3){
		username.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*用户名不能少于三个字符"
		username.style.color="red"
		username.style.fontSize="12px"
		return false
	}
	username.innerHTML=""

}
function pwchek(id){
	var pw=document.getElementById("pw").value
	var divpw=document.getElementById("divpw")
	id.style.background="#FFF"
	if(pw==""){
		divpw.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*密码不能为空"
		divpw.style.color="red"
		divpw.style.fontSize="12px"
		return false
	}
	divpw.innerHTML=""
}
function pwchek1(id){
	var pw=document.getElementById("pw").value
	var pw1=document.getElementById("pw1").value
	var divpw1=document.getElementById("divpw1")
	id.style.background="#FFF"
	if(pw1 !=pw){
		divpw1.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*与原密码不一致"
		divpw1.style.color="red"
		divpw1.style.fontSize="12px"
		return false
	}
	
	divpw1.innerHTML=""
}
function ptchek(id){
	var pt=document.getElementById("pt").value
	var div=document.getElementById("divpt")
	id.style.background="#FFF"
	var regcode=/^\d{11}$/;
	if(pt==""){
		div.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*电话不能为空"
		div.style.color="red"
	    div.style.fontSize="12px"
		return false 
	}
	if(regcode.test(pt)==false){
		div.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*电话不合法"
		div.style.color="red"
	    div.style.fontSize="12px"
		return false 
	}
	div.innerHTML=""
}
