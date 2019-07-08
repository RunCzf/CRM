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
<title>My JSP 'list.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="css/test1.css" rel="stylesheet" type="text/css">
<script src="script/jquery-1.4.1.js"></script>
<script src="script/common.js" charset="utf-8"></script>
<script src="js/changetrcolor.js" type="text/javascript"></script>
<!-- <script type="text/javascript" src="script/jquery-1.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		var msg = '${msg}';
		if(msg != null && msg != "") {
			alert(msg);
		}
	});
</script> -->
</head>
<body>
	<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<td class="page_title">客户信息管理</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32 src="images/m_mpr.gif" width=3></td>
		</tr>
	</table>
	<form action="account/1/accountManGe.action" method="post">
		<table class="query_form_table" cellSpacing=1 cellPadding=1>
			<tr>
				<th>客户编号</th>
				<td><input type="text" name="custNo" /></td>
				<th>名称</th>
				<td><input type="text" name="custName" /></td>
				<th>地区</th>
				<td><select name="custRegion">
						<option value="">全部</option>
						<option value="北京">北京</option>
						<option value="华北">华北</option>
						<option value="中南">中南</option>
						<option value="东北">东北</option>
						<option value="西部">西部</option>
				</select></td>
			</tr>
			<tr>
				<th>客户经理</th>
				<td><input type="text" name="custManagerName" /></td>
				<th>客户等级</th>
				<td><select name="custLevelLabel">
						<option value="">全部</option>
						<option value="战略合作伙伴">战略合作伙伴</option>
						<option value="合作伙伴">合作伙伴</option>
						<option value="大客户">大客户</option>
						<option value="普通客户">普通客户</option>
				</select></td>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<a href="help.html"><!-- <input class="common_button"
						type="button" value="帮助"> --></a>&nbsp;&nbsp;&nbsp; <a
					href="account/newAccount.action"><input class="common_button"
						type="button" value="新建"></a>&nbsp;&nbsp;&nbsp;
					<button class="common_button">查询</button>
				</td>
			</tr>
		</table>
	</form>

	<br />
	<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<td class="page_title">检索结果</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32 src="images/m_mpr.gif" width=3></td>
		</tr>
	</table>

	<table id="data_list_table" class="data_list_table" cellSpacing=1
		cellPadding=1>
		<tr>
			<th id="firstth">序号</th>
			<th>客户编号</th>
			<th>名称</th>
			<th>地区</th>
			<th>客户经理</th>
			<th>客户等级</th>
			<th>操作</th>
		</tr>
		<c:forEach var="service" items="${ sessionScope.cstCustomers.list}" varStatus="status">
		<tr>
			<td class="list_data_number">${status.index+1}</td>
			<td class="list_data_text">${service.custId}</td>
			<td class="list_data_ltext">${service.custName}</td>
			<td class="list_data_text">${service.custRegion}</td>
			<td class="list_data_text">${service.custManagerName}</td>
			<td class="list_data_text">${service.custLevelLabel}</td>
			<td class="list_data_op">
		<!-- ${service.custManagerId} sysUser.usrId -->
		<c:choose>
			<c:when test="${(sessionScope.sysUser.usrId == service.custManagerId) ||(sessionScope.sysUser.sysRole.roleId <4)}">	
			<img onClick="to('account/editAcc.action?custId=${service.custId}');" title="编辑"
				src="images/bt_edit.gif" class="op_button" />
			</c:when>
			<c:otherwise> 
			<img title="编辑" src="images/bt_edit.png" class="op_button" />
			</c:otherwise>
		</c:choose> 
			<img onClick="to('account/contactPerson.action?cstId=${service.custId}');" title="联系人"
				src="images/bt_linkman.gif" class="op_button" /> 
			<img onClick="to('account/activities.action?cstNo=${service.custNo}');" title="交往记录"
				src="images/bt_orders.gif"> 
				<!-- 经理只能删除属于自己的客户 --> 
		<c:choose>
			<c:when test="${(sessionScope.sysUser.usrId == service.custManagerId) ||(sessionScope.sysUser.sysRole.roleId <4)}">	
				<a href="javascript:if(confirm('确认删除？')){window.location.href=''}">
					<img title="删除" src="images/bt_del.gif" class="op_button" />
				</a> 	
			</c:when>
			<c:otherwise>	
				
					<img title="删除" src="images/bt_del.png" class="op_button" />
			</c:otherwise>		
		</c:choose>
			</td>
		</tr>
	</c:forEach>
		<tr>
			<th colspan="100" class="pager">共条${sessionScope.cstCustomers.total }记录 每页 2 条 第${sessionScope.cstCustomers.pageNum }页 
			
			<c:choose>
					<c:when test="${sessionScope.cstCustomers.isFirstPage }">
						<font color="#ABA8AB">首页</font>
					</c:when>
					<c:otherwise>
					<a href="account/1/accountManGe1.action">首页</a>
					</c:otherwise>
				
				</c:choose>
						<c:choose>
						<c:when test="${sessionScope.cstCustomers.hasPreviousPage }">
							<a href="account/${sessionScope.cstCustomers.prePage }/accountManGe1.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
					<c:choose>
							<c:when test="${sessionScope.cstCustomers.hasNextPage }">
								<a href="account/${sessionScope.cstCustomers.nextPage }/accountManGe1.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
						
					<c:choose>
					 	<c:when test="${sessionScope.cstCustomers.isLastPage }">
					 		<font color="#ABA8AB">尾页</font>
					 	</c:when>
					 	<c:otherwise>
					 		<a href="account/${sessionScope.cstCustomers.lastPage}/accountManGe1.action">尾页</a>
						</c:otherwise>
				 	</c:choose>
		
	</table>
</body>
</html>