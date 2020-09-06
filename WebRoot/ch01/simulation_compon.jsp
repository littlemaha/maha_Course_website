<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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