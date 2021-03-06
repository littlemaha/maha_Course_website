<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 模板要求：
				目录id结构为id="*-A" 
				内容id结构为id="text-A"
				id不可为''
-->

<div class="nav">
	<div id="navigation-one" onclick="isShow(this.id)">1 导包</div>
	<div id="navigation-two" onclick="isShow(this.id)">2 配置web.xml</div>
	<div id="navigation-three" onclick="isShow(this.id)">3测试搭建的Struts2应用开发环境</div>
</div>

<div id="text-one" style="display: none">
<xmp>
1	要开发Struts2.3.1.2程序最少需要引入的jar如下：
struts2-core-2.3.1.2.jar：Struts2框架的核心类库。
xwork-core-2.3.1.2.jar：XWork类库，Struts2在其上构建。
ognl-3.0.4.jar：对象图导航语言（Object Graph Navigation Language），Struts2框架通过其读写对象的属性。
freemarker-2.3.18.jar：Struts2的UI标签的模板使用FreeMarker编写。
commons-logging-1.1.1.jar：ASF出品的日志包，Struts2框架使用这个日志包来支持Log4J和JDK1.4+的日志记录。
commons-fileupload-1.2.2.jar：文件上传组件，2.1.6版本后必须加入此文件。
commons-io-2.0.1.jar：
commons-lang-2.5.jar或commons-lang3-3.1.jar：
javassist-3.11.0.GA.jar：它是一个编辑Java字节码的类库，Java编程助手，使得Java字节码操纵简单。
附下载最新的struts2地址：http://struts.apache.org/download
</xmp>
</div>

<div id="text-two" style="display: none">
<xmp>
2	
 <filter>
  <filter-name>Struts2</filter-name>
  <filter-class>org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter</filter-class>
 </filter>
 <filter-mapping>
  <filter-name>Struts2</filter-name>
  <url-pattern>/*</url-pattern>
 </filter-mapping>
 
上面的写法是struts2.1.3以后的版本的写法，如果需使用该版本之前的则需要
<filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>（只不过该种写法在struts2.1.3以后已经标注为过时了）替换上面的<filter-class>标签的值。
2、在StrutsPrepareAndExecuteFilter的init()方法中将会读取类路径下默认的配置文件struts.xml完成初始化操作。这样配置文件中信息就会以JavaBean的形式放在内存中，以后就不用重新读取配置文件struts.xml了。
</xmp>
</div>

<div id="text-three" style="display: none">
<xmp>
正常启动项目，MyEclipse Tomcat能够正常启动就没有什么问题。
</xmp>
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

	#navigation-one {
		width: 100px;
		height: 50px;
		border:1px solid red;
		float:left;
	}
	
	#navigation-two {
		width: 100px;
		height: 50px;
		border:1px solid red;
		float:left;
	}
	
	#navigation-three {
		
		height: 50px;
		border:1px solid red;
		float:left;
	}
	
	#text-one {
		border:1px solid green;
	}
	
	#text-two {
	border:1px solid green;
	}
	
	#text-three {
		border:1px solid green;
	}
</style>









