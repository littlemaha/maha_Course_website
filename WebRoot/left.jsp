<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sd" uri="/struts-dojo-tags" %>




<hand>
	<s:head theme="xhtml"/>
	<sd:head parseContent="true"/>
</hand>

<sd:tree id="root" label="Struts2">

	<sd:treenode label="<a href='ch01/know_01.jsp' target='showframe'>Struts2简介</a>" id="user" >
	</sd:treenode>
	
	<sd:treenode label="<a href='ch01/know_02.jsp' target='showframe'>搭建Struts2开发环境的步骤</a>" id="user_add">	
	</sd:treenode>
	
	<sd:treenode label="Struts2应用开发环境的简单应用" id="user_addd">
		<sd:treenode label="<a href='ch01/know_03.jsp' target='showframe'>模拟用户登录</a>" id="user_adddd"/>
		<sd:treenode label="<a href='ch01/know_04.jsp' target='showframe'>模拟计算器</a>" id="user_addddd"/>	
	</sd:treenode>
	
	<sd:treenode label="用户管理" id="user">
	<sd:treenode label="用户添加" id="user_add"/>
	<sd:treenode label="用户列表" id="user_list"/>
	</sd:treenode>
	
	
</sd:tree>
	
	
	
	





<style>
 .one {
 	font-size:20px;
 }
</style>