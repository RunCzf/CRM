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
<base href="<%= basePath %>">
<meta charset="UTF-8">
<title>用户贡献</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/style.css"
	rel="stylesheet" type="text/css">
<script src="script/common.js"></script>
<script src="script/jquery-1.4.1.js"></script>
<script type="text/javascript" charset="utf-8">
function chaxungongxian() {
	window.location.href="chart/StatisticalContribute.action?cstname=" + $("#cstgongxianname").val()+ "&year=" + $("#cstodryear").val();
}
</script>
</head>
<body>
  <div class="page_title">客户贡献分析</div>
	<div class="button_bar">
		<a href="help.html"><!-- <input class="common_button" type="button"
			value="帮助"> --></a>
		<button class="common_button" onclick="chaxungongxian();">查询</button>
	</div>
	<table class="query_form_table">
		<tr>
			<th>客户名称</th>
			<td><input name="cstName" type="text" id="cstgongxianname" /></td>
		</tr>
	</table>
	<br />
	
    <div class="page_title">图表</div>
	<div style="width: 800px; margin: 20px auto">
		<img
			src="${sessionScope.chartURL}"
			width=800 height=400 border=0 id="kehugongxian">
	</div>
</body>
</html>