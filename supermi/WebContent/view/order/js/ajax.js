
/**
 * ajax请求框架
 * @param methodType 参数类型 GET|POST
 * @param url 请求地址
 * @param param 参数 eq: 参数名=值&参数名=值
 * @param func
 * @return
 */
function sendRequest(methodType,url,param,func){
	var xmlHttp;
	//根据当前环境创建XMLHttpRequest
	if(window.XMLHttpRequest){
		xmlHttp=new XMLHttpRequest();
	}else{
		xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttp.onreadystatechange=function(){
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				//取得结果
				var result=xmlHttp.responseText;
				//调用你指定的函数并且把参数传给此函数
				func(result);
			}else{
				console.log("发生错误=="+xmlHttp.status);
			}
		}else{
			console.log("交互状态=="+xmlHttp.readyState);
		}
	}
	//根据请求类型设置是否需要设置请求头
	if(methodType.toLowerCase()=="post"){
		//设置参数
		xmlHttp.open(methodType,url,true);
		//PS:必须要在打开以后才可以设置请求头
		xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		
	}else{
		//如果是get请求且参数有则加到URL后面
		if(param!="" && param!=null){
			//设置参数
			xmlHttp.open(methodType,url+"?"+param,true);
		}else{
			//设置参数 //如果是get请求且参数无则不处理
			xmlHttp.open(methodType,url,true);
		}
		
	}
	
	//根据请求类型发送
	if(methodType.toLowerCase()=="post"){
		xmlHttp.send(param);
	}else{
		xmlHttp.send(null);
	}
}