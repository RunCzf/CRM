<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>My JSP 'activities_edit.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/style.css"
	rel="stylesheet" type="text/css">
<script src="script/common.js"></script>
<script type="text/javascript"
	src="script/jquery-1.4.1.js"></script>
<script type="text/javascript"
	src="js/activities_add.js"></script>
</head>
<body>
  <div class="page_title">客户信息管理 &gt; 客户信息 &gt; 交往记录 &gt; 编辑交往记录</div>
	<form
		action=""
		method="post" >
		<div class="button_bar">
			<!-- <a href="help.html"><input class="common_button" type="button"
				value="帮助"></a>
			<button class="common_button" type="submit">保存/返回</button> -->
		</div>
		<input type="hidden" name="atv_id"
			value="" /> 
	   <input type="hidden"
			name="atv_cust_id" value=" " />
		<input type="hidden" name="atv_cust_no"
			value="" /> 
		<input type="hidden"
			name="atv_cust_name"
			value="" />
		<table class="query_form_table" id="table1">
			<tr>
				<th>地点</th>
				<td><input name="atvPlace"
					value="" size="20"
					id="atv_place" /><span class="red_star" id="atv_placespan">*</span></td>
			</tr>
			<tr>
				<th>概要</th>
				<td><input name="atvTitle"
				    value="" size="20"
					id="atv_title" /><span class="red_star" id="atv_titlespan">*</span></td>
				<th>备注</th>
				<td><input name="atvDesc" size="20"
				    value=""
					 /></td>
			</tr>
		</table>
	</form>
</body>
</html>