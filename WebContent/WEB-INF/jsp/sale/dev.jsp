<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
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
<script src="js/changetrcolor.js"
	type="text/javascript"></script>
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
	<form
		action="sale/1/saleDev.action"
		method="post">
		<table class="query_form_table" cellSpacing=1 cellPadding=1>
			<tr>
				<th>客户名称</th>
				<td><input type="text" name="chcCustName" /></td>
				<th>概要</th>
				<td><input type="text" name="chcTitle" /></td>
				<th>联系人</th>
				<td><input type="text" name="chcLinkman" size="20" /></td>
			</tr>
			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<a href="help.html"><!-- <input
						class="common_button" type="button" value="帮助"> --></a>&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp; <input class="common_button" type="submit" value="查询">
				</td>
			</tr>
		</table>
	</form>
	<br />
	<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
	<tr>
		<TD class="page_title">检索结果</TD>
		<TD class="page_title_middle">&nbsp;</TD>
		<TD width=3><IMG height=32
			src="images/m_mpr.gif" width=3></TD>
	</tr>
	</table>

	<table id="data_list_table" class="data_list_table" cellSpacing=1
		cellPadding=1>
		<tr>
			<th id="firstth">编号</th>
			<th>客户名称</th>
			<th>概要</th>
			<th>联系人</th>
			<th>联系人电话</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
					<c:forEach var="salChance" items="${sessionScope.findSalChanceByPage.list }">
							<tr>

								<td class="list_data_text">${salChance.chcId }</td>
								<td class="list_data_number">${salChance.chcCustName }</td>
								<td class="list_data_text">${salChance.chcTitle }</td>
								<td class="list_data_ltext">${salChance.chcLinkman }</td>
								<td class="list_data_text">${salChance.chcTel }</td>
								<td class="list_data_text">${salChance.chcStatus }</td>
								<td class="list_data_op">
									<a href="sale/saleDevPlan.action?chcId=${salChance.chcId }"><img
										title="制定计划"
										src="images/bt_plan.gif"
										class="op_button" />
									</a> 
									<img
										onClick="to('sale/saleDevDetail.action?chcId=${salChance.chcId }');"
										title="查看"
										src="images/bt_detail.gif"
										class="op_button" />
								</td>
							</tr>
					
				</c:forEach>
		<tr>
			<th colspan="10" class="pager">
				<div class="pager">
				共${sessionScope.findSalChanceByPage.total }条记录 
					每页 3 条 第${sessionScope.findSalChanceByPage.pageNum }页  
					 <c:choose>
					<c:when test="${sessionScope.findSalChanceByPage.isFirstPage }">
						<font color="#ABA8AB">首页</font>
					</c:when>
					<c:otherwise>
					<a href="sale/${sessionScope.findSalChanceByPage.firstPage}/saleDevOne.action">首页</a>
					</c:otherwise>
				</c:choose>
							<c:choose>
						<c:when test="${sessionScope.findSalChanceByPage.hasPreviousPage }">
							<a href="sale/${sessionScope.findSalChanceByPage.prePage }/saleDevOne.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
					<c:choose>
							<c:when test="${sessionScope.findSalChanceByPage.hasNextPage }">
								<a href="sale/${sessionScope.findSalChanceByPage.nextPage }/saleDevOne.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
						
					<c:choose>
					 	<c:when test="${sessionScope.findSalChanceByPage.isLastPage }">
					 		<font color="#ABA8AB">尾页</font>
					 	</c:when>
					 	<c:otherwise>
					 		<a href="sale/${sessionScope.findSalChanceByPage.lastPage}/saleDevOne.action">尾页</a>
						</c:otherwise>
				 	</c:choose>
				</div>
			</th>
		</tr>
	</table>
</body>
</html>