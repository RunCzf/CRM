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
<script src="script/common.js"></script>
</head>
<body>
   <table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<TD class="page_title">客户开发计划</TD>
			<TD class="page_title_middle">&nbsp;</TD>
			<TD width=3><IMG height=32
				src="images/m_mpr.gif" width=3></TD>
		</tr>
	</table>
	<form action="" method="post">
		<table class="query_form_table" cellSpacing=1 cellPadding=1>
			<tr>
				<td width=100% height=30 align=left
					background="images/m_table_top.jpg"
					colspan="6"><strong>&nbsp;执行计划</strong></td>
			</tr>

			<tr>
				<th>编号</th>
				<td><input type="hidden" name="chcId" value="${sessionScope.oneSalChance.chcId}"></td>
				<th>机会来源</th>
				<td>${sessionScope.oneSalChance.chcSource}</td>
			</tr>
			<tr>
				<th>客户名称</th>
				<td><input type="hidden" name="chcCustName"
					value="${sessionScope.oneSalChance.chcCustName}"></td>
				<th>成功机率（%）</th>
				<td>&nbsp;${sessionScope.oneSalChance.chcRate}</td>
			</tr>
			<tr>
				<th>概要</th>
				<td>${sessionScope.oneSalChance.chcTitle}</td>
				<th>联系地址</th>
				<td>${sessionScope.oneSalChance.chcAddr}</td>
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
				<td><input type="hidden" name="chcDueTo"
					value="${sessionScope.oneSalChance.chcDueTo}"></td>
			</tr>

			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<a href="help.html"><!-- <input class="common_button" type="button"
						value="帮助"> --></a>&nbsp;&nbsp;&nbsp; <a
					href="sale/saleDevExecuteFa.action?chcId=${sessionScope.oneSalChance.chcId}&chcStatus=defailed"><input
						class="common_button" size="70" type="button" value="终止开发"></a>&nbsp;&nbsp;&nbsp;
					<a href="sale/saleDevExecuteSu.action?chcId=${sessionScope.oneSalChance.chcId}&chcStatus=success"><input
						class="common_button" size="70" type="button" value="开发成功"></a>&nbsp;&nbsp;&nbsp;
					<a href="sale/saleDevPlan.action"><!-- <input class="common_button"
						type="button" value="返回"> --></a>
				</td>
			</tr>
		</table>
	</form>
	<br />

	<table class="data_list_table" id="table1" cellSpacing=1 cellPadding=1>
		<tr>
			<th>计划</th>
		</tr>
	</table>

	<form action="sale/saleDevExecute.action" method="post">
		<table class="query_form_table" id="table2" cellSpacing=1
			cellPadding=1>
			<tr>
				<td><input  name="plaTodo" class="red_star" id="ttt" size="200" value="${sessionScope.findSalPlan.plaTodo}"></td>
				<td><input type="hidden" name="plaId" value="${sessionScope.findSalPlan.plaId}"></td>
				<td><input type="hidden" name="plaChcId" value="${sessionScope.oneSalChance.chcId}"></td>
			</tr>

			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<input type="submit" value="保存">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>