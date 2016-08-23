function check(id){
	id.style.backgroundColor="#EEEEEE";
	id.placeholder="";
}
function onbl(id){
	id.style.backgroundColor="#FFFFFF";
	var lbuser=document.getElementById("lbuser");
	var lbpassword=document.getElementById("lbpassword");
	var lbpasswordp=document.getElementById("lbpasswordp");
	var lbemail=document.getElementById("lbemail");
	var name=id.value;
	if(id==username){
	if(name==""){
		lbuser.style.color="red";
		lbuser.style.fontSize="14px";
		lbuser.innerText="*用户名不允许为空!";
		username.style.color="red"
		return false;
	}
	lbuser.style.color="turquoise";
	lbuser.innerHTML="√";
	lbuser.style.fontSize="20px";
	}
	if(id==password){
	if(name==""){
		lbpassword.style.color="red";
		lbpassword.style.fontSize="14px";
		lbpassword.innerText="*密码不允许为空!";
		lbpassword.style.color="red"
		return false;
	}
	if(name.length<4){
		lbpassword.style.color="red";
		lbpassword.style.fontSize="14px";
		lbpassword.innerText="*密码太过于简单!";
		lbpassword.style.color="red"
		return false;
	}
	lbpassword.style.color="turquoise";
	lbpassword.innerHTML="√";
	lbpassword.style.fontSize="20px";
	}
		if(id==passwordp){
	var pass=document.getElementById("password").value;
	if(name !=pass){
		lbpasswordp.style.color="red";
		lbpasswordp.style.fontSize="14px";
		lbpasswordp.innerText="*与原密码不一致!";
		return false;
	} 
	lbpasswordp.style.color="turquoise";
	lbpasswordp.innerHTML="√";
	lbpasswordp.style.fontSize="20px";
	}

}

//表单提交验证
function checkfrom(){
		var user=lbuser.textContent;
		var pas=lbpassword.textContent;
		var passp=lbpasswordp.textContent;
		var pemail=lbemail.textContent;
		var ps=document.getElementById("password").value;
		var ps1=document.getElementById("passwordp").value;
		
	if(user !="√"|| pas !="√"|| passp!="√"||pemail !="√"){

		alert("你的注册信息不规范，请检查好再注册！！")
		return false;
	}else{
		setTimeout(alert("恭喜你注册成功！！"),1000);
		return true;
	}
	return false
}
//图片预览
window.onload=function()
{
    document.getElementById('file').onchange = function(evt) {

        // 如果浏览器不支持FileReader，则不处理

        if (!window.FileReader) return;

        var files = evt.target.files;

        for (var i = 0, f; f = files[i]; i++) {

            if (!f.type.match('image.*')) {

                continue;

            }


            var reader = new FileReader();

            reader.onload = (function(theFile) {

                return function(e) {

                    // img 元素

                    document.getElementById('previewImage').src = e.target.result;

                };
 
            })(f);


            reader.readAsDataURL(f);

        }

    }
}
function localtion() {
	window.location.href="register.jsp";
}
