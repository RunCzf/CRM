<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userName=request.getParameter("usrName");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%= basePath %>">
<meta charset="UTF-8">
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/test1.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="script/common.js">
</script>
</head>
<body>
   <table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<td class="page_title">销售机会管理</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32
				src="images/m_mpr.gif" width=3></td>
		</tr>
	</table>
	<table class="query_form_table" cellSpacing=1 cellPadding=1>
		<tr>
			<td width=100% height=30 align=left
				background="images/m_table_top.jpg"
				colspan="6"><strong>&nbsp;制定计划</strong></td>
		</tr>
		<tr>
			<th>编号</th>
			<td>${sessionScope.oneSalChance.chcId}</td>
			<th>机会来源</th>
			<td>${sessionScope.oneSalChance.chcSource}</td>
		</tr>
		<tr>
			<th>客户名称</th>
			<td>${sessionScope.oneSalChance.chcCustName}</td>
			<th>成功机率（%）</th>
			<td>&nbsp;${sessionScope.oneSalChance.chcRate}</td>
		</tr>
		<tr>
			<th>概要</th>
			<td colspan="3">${sessionScope.oneSalChance.chcTitle}</td>
		</tr>
		<tr>
			<th>联系人</th>
			<td>${sessionScope.oneSalChance.chcLinkman}</td>
			<th>联系人电话</th>
			<td>${sessionScope.oneSalChance.chcTel}</td>
		</tr>
		<tr>
			<th>机会描述</th>
			<td colspan="3">${sessionScope.oneSalChance.chcDesc}</td>
		</tr>
		<tr>
			<th>创建人</th>
			<td>${sessionScope.oneSalChance.chcCreateBy}</td>
			<th>指派给</th>
			<td>${sessionScope.oneSalChance.chcDueTo}</td>
		</tr>
		<tr>
			<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
				<a href="help.html"><!-- <input class="common_button" type="button"
					value="帮助"> --></a>&nbsp;&nbsp;&nbsp; 
						<c:choose>
					<c:when test="${sessionScope.oneSalChance.chcStatus eq 'develop'}">
						<a href="sale/saleDevExecute.action?chcId=${sessionScope.oneSalChance.chcId}">
						<button class="common_button">执行</button></a> &nbsp;&nbsp;&nbsp; 
					</c:when>	
					<c:otherwise>
						<font color="#ABA8AB">执行</font>
						</c:otherwise>
					</c:choose>
					 <a href="sale/1/dev.action"><!-- <input class="common_button"
					type="button" value="返回"> --></a>
			</td>
		</tr>
	</table>
	<br />
</body>
</html>