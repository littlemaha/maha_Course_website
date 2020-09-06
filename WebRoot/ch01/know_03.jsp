<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 模板要求：
				目录id结构为id="*-A" 
				内容id结构为id="text-A"
				id不可为''
				*为任意
				A为任意但不能重复
-->

<div class="nav"><!-- 标题区 -->
	<div id="*-A" onclick="isShow(this.id)">1 登录界面</div>
	<div id="*-B" onclick="isShow(this.id)">2 登录所需的javaBean</div>
	<div id="*-C" onclick="isShow(this.id)">3 配置struts.xml文件的内容：</div>
	<div id="*-D" onclick="isShow(this.id)">4 登录成功界面：</div>
	<div><a href="simulation_login.jsp">点击体验</a></div>
</div>


<div class="content"><!-- 内容区 -->
	<div id="text-A" style="display: none">
		<xmp>
<!-- simulation_login.jsp -->
<form action="ch01/loginAction.action" method="post">
	用户名<input name="userName" type="text"/></br>
	密     码<input name="password" type="password"/></br>
	<input name="submit" type="submit" value="登录"/>
</form>
		</xmp>
	</div>
	
	<div id="text-B" style="display: none">
		<xmp>
package cn.edu.hezeu.jsj.maha.ch01.action;

public class simulation_login {
	private String userName;
	private String password;
	private String isOk;

	public String execute(){//核心
		if("admin".equals(userName) && "123456".equals(password)){
			isOk = "登录成功";
			return "success";//逻辑视图
		} else {
			return "failure";//逻辑视图
		}
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIsOk() {
		return isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}

}

		</xmp>
	</div>
	
	<div id="text-C" style="display: none">
		<xmp>
注意  第一次要现在src的根目录下建struts.xml

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.3//EN"
"http://struts.apache.org/dtds/struts-2.3.dtd">
<struts>	
	<package name="cn.edu.hezeu.jsjs" namespace="/ch01" extends="struts-default">
		<action name="loginActions" class="cn.edu.hezeu.jsj.maha.ch01.action.simulation_login" method="execute">
			<result name="success" type="redirect">/ch01/simulation_login_ok.jsp</result>
			<result name="failure" type="redirect">/ch01/simulation_login.jsp</result>
		</action>
	</package>
</struts>
		</xmp>
	</div>
	<div id="text-D" style="display: none">
		<xmp>
			<h1>模拟登录成功</h1>
		</xmp>
	</div>
	
</div>
<img width=100% src="../photo/ch01/steps.png"/>
<script>
	var ID='';
	
	function isShow(id){
		//console.log(ID);
		//console.log(id);
		//console.log(id.split('-')[1]);
		//console.log('text-'+id.split('-')[1]);
		if(ID!=''){
		document.getElementById(ID).style.display="none";//隐藏
		}
		
		document.getElementById('text-'+id.split('-')[1]).style.display = '';
		ID='text-'+id.split('-')[1];
	}
</script>


<style>
	xmp {
		width:100%;
 		white-space:pre-wrap;
		white-space:-moz-pre-wrap;
		white-space:-pre-wrap;
		white-space:-o-pre-wrap;
		word-wrap:break-word;
		border:red solid 1px;
	}
	
	.nav {
		display: table;
	}
	
	.nav div {
		width: 100px;
		height: 50px;
		border:1px solid red;
		float:left;
	}
	
	.content div {
		border:1px solid green;	
	}
</style>









