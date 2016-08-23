var nowshow=1;记录当前显示的界面
function show(){
	           nowshow=nowshow;
				for(var i=1;i<7;i++){
					if(i==nowshow){
						document.getElementById("img"+nowshow).style.display="block";
					}else{
							document.getElementById("img"+i).style.display="none";
					}
				}
				if(nowshow==6){
					nowshow=1;
				}else{
					nowshow++;
				}
				setTimeout("show()",3000);
			}
