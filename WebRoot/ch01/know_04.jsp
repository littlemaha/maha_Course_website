<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 模板要求：
				目录id结构为id="*-A" 
				内容id结构为id="text-A"
				id不可为''
				*为任意但不能重复
				A为任意但不能重复
-->

<div class="nav"><!-- 标题区 -->
	<div id="*-A" onclick="isShow(this.id)">显示页面</div>
	<div id="*-B" onclick="isShow(this.id)">javaBean</div>
	<div id="*-C" onclick="isShow(this.id)">struts.xml</div>
	<div><a href="simulation_compon.jsp">点击体验</a></div>
	
</div>


<div class="content"><!-- 内容区 -->
	<div id="text-A" style="display: none">
		<xmp>
<!-- ch01/simulation_compon.jsp -->
		
<form action="ch01/loginActionss">
		<input type="text" name="one" value="${one}"/> 
		<label for="sex"></label>
            <select id="sex" name="xuan" >
            	
                <option value="1" ${xuan=="1"?'selected':''}  >+</option>
                <option value="2" ${xuan=="2"?'selected':''} >-</option>
                <option value="3" ${xuan=="3"?'selected':''}>*</option>
                
                <option value="4" ${xuan=="4"?'selected':''} >/</option>
            </select>
            
            
		<input type="text" name="two" value="${two}" />
		<input type="submit" value="="/>
		${sole}
	</form>
		</xmp>
	</div>
	<div id="text-B" style="display: none">
		<xmp>
package cn.edu.hezeu.jsj.maha.ch01.action;

public class simulation_compon {
	private int one;
	private int xuan;
	private int two;
	private int sole;
	
	public String execute(){//核心
		
		if(xuan == 1){
			sole = one + two;
			return "ass";//逻辑视图
		} 
		if(xuan == 2){
			sole = one - two;		
			return "ass";//逻辑视图
				} 
		if(xuan == 3){
			sole = one * two;
			return "ass";//逻辑视图
		} 
		if(xuan == 4){
			sole = one / two;
			return "ass";//逻辑视图
		} 
		return "ass";
	}
	
	public int getSole() {
		return sole;
	}

	public void setSole(int sole) {
		this.sole = sole;
	}

	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getXuan() {
		return xuan;
	}
	public void setXuan(int xuan) {
		this.xuan = xuan;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
}
		</xmp>
	</div>
	<div id="text-C" style="display: none">
		<xmp>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.3//EN"
"http://struts.apache.org/dtds/struts-2.3.dtd">
<struts>
	<package name="cn.edu.hezeu.jsjs" namespace="/ch01" extends="struts-default">
		<action name="loginActionss" class="cn.edu.hezeu.jsj.maha.ch01.action.simulation_compon" method="execute">
			<result name="ass" type="dispatcher">/ch01/simulation_compon.jsp</result>
		</action>
	</package>
</struts>
		</xmp>
	</div>
	
</div>

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









