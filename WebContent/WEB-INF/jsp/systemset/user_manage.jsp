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
<base href="<%=basePath %>">
<meta charset="UTF-8">
<title>My JSP 'user_manage.jsp' starting page</title>
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
			<td class="page_title">系统设置</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32
				src="images/m_mpr.gif" width=3></td>
		</tr>
	</table>
	<p style="font-size: 11px;">角色等级说明: 1-系统管理员 2-高管 3-销售主管 4-客户经理</p>
	<table class="query_form_table" cellSpacing=1 cellPadding=1
		style="text-align: center;">
		<tr>
			<td width=100% height=30 align=left
				background="images/m_table_top.jpg"
				colspan="6"><strong>&nbsp;用户管理</strong> 
			
					<a href="sysuser/addSysUser.action"><input class="common_button" type="button" value="新增"></a>
				
				</td>
		</tr>
		<tr>
			<th id="firstth">编号</th>
			<th>用户名</th>
			<th>角色等级</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
		<c:forEach var="sysUser" items="${sessionScope.pageInfo.list }" varStatus="status">
			
			<tr>
				<td class="list_data_number">${status.index + 1 }</td>
				<td class="list_data_ltext" >${sysUser.usrName }</td>
				<td class="list_data_ltext" >${sysUser.sysRole.roleId }</td>
				<td class="list_data_text">
				<c:choose>
					<c:when test="${sysUser.usrFlag == 1 }">
						 正常
					</c:when>
					<c:otherwise>
			                                 不正常
					</c:otherwise>
				</c:choose>
	
			    </td>
			    
				<td class="list_data_op">
							<img
								onClick="to('sysuser/userUpdate.action?usrId=${sysUser.usrId}');" 
								title="编辑"
								src="images/bt_edit.gif"
								class="op_button" />
							<img
								onClick="to('sysuser/userDelete.action?usrId=${sysUser.usrId}');" 
								title="删除"
								src="images/bt_del.gif"
								class="op_button" />
				</td>
			</tr>
		</c:forEach>
		
     
		<tr>
			<td colspan="5">共${sessionScope.pageInfo.total }条记录 每页 3 条 第${sessionScope.pageInfo.pageNum }页 <a
				href="sysuser/1/findAllUser.action">首页</a>
			
					<c:choose>
						<c:when test="${sessionScope.pageInfo.hasPreviousPage }">
							<a href="sysuser/${sessionScope.pageInfo.prePage }/findAllUser.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
					<c:choose>
							<c:when test="${sessionScope.pageInfo.hasNextPage }">
								<a href="sysuser/${sessionScope.pageInfo.nextPage }/findAllUser.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
				<a href="sysuser/${sessionScope.pageInfo.lastPage}/findAllUser.action">尾页</a>
			</td>
		</tr>
		
	</table>
	<br />
</body>
</html>