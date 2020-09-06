<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 模板要求：
				目录id结构为id="*-A" 
				内容id结构为id="text-A"
				id不可为''
				*为任意但
				A为任意但不能重复
-->

<div>
	<xmp>
		Struts2是以Webwork的设计思想为核心，吸收了Struts1的优点，因此，可以认为Struts2是Struts1和Webwork结合的产物（注意：面试时，可能会问Struts2与WebWork是什么关系？）；和Struts1一样，Struts2也是MVC框架。不过有一点请大家注意：尽管Struts2与Struts1在名字上差别不大，但是Struts2与Struts1在代码编写风格上几乎是不一样的。既然有了Struts1，为何还要推出Struts2呢？主要是因为Struts2有如下优点：
	</xmp>
</div>

<div class="nav"><!-- 标题区 -->
	<div id="*-A" onclick="isShow(this.id)">1</div>
	<div id="*-B" onclick="isShow(this.id)">2</div>
	<div id="*-C" onclick="isShow(this.id)">3</div>
	<div id="*-D" onclick="isShow(this.id)">4</div>
	<div id="*-E" onclick="isShow(this.id)">5</div>
	<div id="*-F" onclick="isShow(this.id)">6</div>
	
</div>

<div class="content"><!-- 内容区 -->
	<div id="text-A" style="display: none">
		<xmp>
	1、在软件设计上Struts2可没有像Struts1那样跟Servelt API和Struts API有着紧密的耦合，Struts2的应用不依赖于Servelt API和Struts API。Struts2的这种设计属于无侵入式设计，而Struts1却属于侵入式设计。例如Struts1中的一段代码如下：
public class OrderListAction extends Action{
   public ActionForward execute(ActionMapping mapping,ActionForm form,
HttpServletRequest request, HttpServletResponse response) throws Exception{
}
}
注：它与Struts API（如Action）和Servlet API（如HttpServletRequest）等都有紧密的耦合，是一种侵入式的设计。
		</xmp>
	</div>
	<div id="text-B" style="display: none">
		<xmp>
	2、Struts2提供了拦截器，利用拦截器可以进行AOP编程，实现如权限拦截等功能。
		</xmp>
	</div>
	<div id="text-C" style="display: none">
		<xmp>
	3、Struts2提供了类型转换器，我们可以把特殊的请求参数转换成需要的类型；在Struts1中，如果我们要实现同样的功能，就必须向Struts1的底层实现BeanUtil注册类型转换器才行。
		</xmp>
	</div>
	<div id="text-D" style="display: none">
		<xmp>
	4、Struts2提供多种表现层技术，如JSP、FreeMarker、Veloctiy等。
		</xmp>
	</div>
	<div id="text-E" style="display: none">
		<xmp>
	5、Struts2的输入校验可以对指定方法进行校验，解决了Struts1的长久之痛。
		</xmp>
	</div>
	<div id="text-F" style="display: none">
		<xmp>
	6、Struts2提供了全局范围、包范围和action范围的国际化资源文件管理实现。
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

