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
<title>毕业设计项目</title>
<meta charset="UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/test1.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="script/common.js"></script>
<script src="js/changetrcolor.js" type="text/javascript"></script>
<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		var msg = '${msg}';
		if(msg != null && msg != "") {
			alert(msg);
		}
	});
</script>
<c:remove var="msg" scope="session"/>
</head>
<body>
   <table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<TD class="page_title">经销机会管理</TD>
			<TD class="page_title_middle">&nbsp;</TD>
			<TD width=3><IMG height=32
				src="images/m_mpr.gif" width=3></TD>
		</tr>
	</table>
	<form
		action="sale/1/findSaleChance.action"
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
					<!-- <a href="help.html"><input class="common_button" type="button"
						value="帮助"></a> -->&nbsp;&nbsp;&nbsp;
						<a href="sale/addSaleChance.action?chcDueTo=${sessionScope.sysUser.usrName}"><input class="common_button"
							type="button" value="新建"></a>
					 &nbsp;&nbsp; <input class="common_button" type="submit" value="查询">
				</td>
			</tr>
		</table>
	</form>
	<br />
	<table width="100%" cellSpacing=0 cellPadding=0>
		<tr>
			<TD width="247" class="page_title">检索结果</TD>
			<TD width="718" class="page_title_middle">&nbsp;</TD>
			<TD width=25><IMG height=32
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
			<th>操作</th>
		</tr>
		<c:forEach var="service" items="${ sessionScope.findSalChance.list}" varStatus="status">
			<tr>
				<td class="list_data_number">${service.chcId}</td>
				<td class="list_data_text">${service.chcCustName }</td>
				<td class="list_data_ltext">${service.chcDesc }</td>
				<td class="list_data_text">${service.chcLinkman }</td>
				<td class="list_data_text">${service.chcTel }</td>
				<td class="list_data_op">
				
							<c:choose>
						<c:when test="${sessionScope.sysUser.sysRole.roleId <4 }">
							<a href="sale/dispatchSale.action?chcId=${service.chcId }">
								<img title="指派" src="images/bt_linkman.gif" class="op_button" />
							</a>
					
							<a href="sale/saleEdit.action?chcId=${service.chcId }">
								<img title="编辑" src="images/bt_edit.gif" class="op_button" />
							</a>

							<a href="sale/delete.action?chcId=${service.chcId }">
								<img title="删除" src="images/bt_del.gif" class="op_button" />
							</a>
						</c:when>
						<c:otherwise>
							<img title="指派" src="images/bt_linkman.png" class="op_button" />
							<img title="编辑" src="images/bt_edit.png" class="op_button" />
							<img title="删除" src="images/bt_del.png" class="op_button" />
						</c:otherwise>
					</c:choose>
			   </td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="7" class="pager">
				<div class="pager">
					共条${sessionScope.findSalChance.total }记录 每页 3 条 第${sessionScope.findSalChance.pageNum }页 
					 <c:choose>
					<c:when test="${sessionScope.findSalChance.isFirstPage }">
						<font color="#ABA8AB">首页</font>
					</c:when>
					<c:otherwise>
					<a href="sale/1/findSaleChanceOne.action">首页</a>
					</c:otherwise>
				</c:choose>
							<c:choose>
						<c:when test="${sessionScope.findSalChance.hasPreviousPage }">
							<a href="sale/${sessionScope.findSalChance.prePage }/findSaleChanceOne.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
					<c:choose>
							<c:when test="${sessionScope.findSalChance.hasNextPage }">
								<a href="sale/${sessionScope.findSalChance.nextPage }/findSaleChanceOne.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
						
					<c:choose>
					 	<c:when test="${sessionScope.findSalChance.isLastPage }">
					 		<font color="#ABA8AB">尾页</font>
					 	</c:when>
					 	<c:otherwise>
					 		<a href="sale/${sessionScope.findSalChance.lastPage}/findSaleChanceOne.action">尾页</a>
						</c:otherwise>
				 	</c:choose>
				</div>
			</th>
		</tr>
	</table>
</body>
</html>