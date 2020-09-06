<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 模板要求：
				目录id结构为id="*-A" 
				内容id结构为id="text-A"
				id不可为''
				*为任意但不能重复
				A为任意但不能重复
-->

<div class="nav"><!-- 标题区 -->
	<div id="*-A" onclick="isShow(this.id)"><!-- 标题1 --></div>
	
</div>


<div class="content"><!-- 内容区 -->
	<div id="text-A" style="display: none">
		<xmp>
			<!-- 内容1 -->
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









