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
<title>服务分配</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/test1.css"
	rel="stylesheet" type="text/css">
<script src="script/common.js"></script>
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
   <br>

	<form action="cstservice/1/findByCon.action" method="post" name="frm">
		<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
			<tr>
				<td class="page_title">客户服务管理</td>
				<td class="page_title_middle">&nbsp;</td>
				<td width=3><IMG height=32
					src="images/m_mpr.gif" width=3>
				</td>
			</tr>
		</table>
		<table class="query_form_table" cellSpacing=1 cellPadding=1>
			<tr>
				<td width=100% height=30 align=left
					background="images/m_table_top.jpg"
					colspan="6"><strong>&nbsp;服务分配</strong></td>
			</tr>
			<tr>
				<th height="28">客户</th>
				<td><input type="text" name="svrCustName"/></td>
				<th height="28">概要</th>
				<td><input type="text" name="svrTitle"/></td>
			</tr>
			<tr>
				<th height="28">服务类型</th>
				<td><select name="svrType" >
						<option value="" selected='selected'>全部</option>
						<option value="咨询">咨询</option>
						<option value="建议">建议</option>
						<option value="投诉">投诉</option>
				</select></td>
				<th height="22">状态</th>
				<td><input type="text" name="svrStatus" value="新创建" /></td>
			</tr>
			<tr>
				<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
					<a href="help.html"><!-- <input class="common_button" type="button"
						value="帮助"> --></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="common_button" >查询</button>
				</td>
			</tr>
		</table>
	</form>
	<br />

	<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
		<tr>
			<td class="page_title">检索结果</td>
			<td class="page_title_middle">&nbsp;</td>
			<td width=3><IMG height=32
				src="images/m_mpr.gif" width=3>
			</td>
		</tr>
	</table>

	<table id="data_list_table" class="data_list_table" cellSpacing=1
		cellPadding=1>
		<tr>
			<th id="firstth">编号</th>
			<th>客户</th>
			<th>概要</th>
			<th>服务类型</th>
			<th>创建人</th>
			<th>分配给</th>
			<th>操作</th>
		</tr>
			<c:forEach var="service" items="${sessionScope.pageInfoByfp.list }" varStatus="status">
				<tr>
				
					<td class="list_data_number">${status.index + 1 }</td>
					<td class="list_data_text">${service.svrCustName }</td>
					<td class="list_data_ltext">${service.svrTitle }</td>
					<td class="list_data_text">${service.svrType }</td>
					<td class="list_data_text">${service.svrCreateBy }</td>
					<td class="list_data_text">
						
						<c:choose>
							<c:when test="${service.svrStatus == '新创建'}">
								<!-- cstService/fenPei.action?svrId=${service.svrId } -->
								<form action="cstservice/fenPei.action" method="post" name="frm">
									<input type="hidden" value="${service.svrId}" name="svrId">
									<select name="svrDueTo" id="cs.svr_due_to">
										<option value="">请选择..</option>
										<c:forEach var="allSvrDueTo" items="${sessionScope.mngName}">
											<option value="${allSvrDueTo.usrName}">${allSvrDueTo.usrName}
											</option>
										</c:forEach>
									</select> 
									<input type="hidden" name="svrStatus" id="cs.svr_status" />
									<input type="submit" value="分配" name="" onclick="fenpei()">
								</form>
							</c:when>
							<c:otherwise>
							
								<input type="hidden" value="" name="svrId">
								<select name="svrDueTo" id="cs.svr_due_to" disabled="disabled">
									<option value="">${service.svrDueTo }</option>
								</select>
							</c:otherwise>
						</c:choose>
					
						</td>
					<td class="list_data_op"><a
						href="cstservice/delete.action?serviceId=${service.svrId}"><img
							title="删除"
							src="images/bt_del.gif"
							class="op_button" onclick="del()" /> </a></td>
				</tr>
			</c:forEach>
		<tr>
			<td colspan="8" align="center">共${sessionScope.pageInfoByfp.total }条记录 每页 4
				条 第${sessionScope.pageInfoByfp.pageNum }页 
				<c:choose>
					<c:when test="${sessionScope.pageInfoByfp.isFirstPage}">
					<font color="#ABA8AB">首页</font>
					</c:when>
					<c:otherwise>
					<a href="cstservice/1/findByCon1.action">首页</a> 
					</c:otherwise>
				</c:choose>
					<c:choose>
						<c:when test="${sessionScope.pageInfoByfp.hasPreviousPage }">
							<a href="cstservice/${sessionScope.pageInfoByfp.prePage }/findByCon1.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
					<c:choose>
							<c:when test="${sessionScope.pageInfoByfp.hasNextPage }">
								<a href="cstservice/${sessionScope.pageInfoByfp.nextPage }/findByCon1.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
				 	<c:choose>
					 	<c:when test="${sessionScope.pageInfoByfp.isLastPage }">
					<%--  <a href="cstservice/${sessionScope.pageInfoByfp.lastPage}/findByCon.action">尾页</a> --%>
					 		<font color="#ABA8AB">尾页</font>
					 	</c:when>
					 	<c:otherwise>
					 		<a href="cstservice/${sessionScope.pageInfoByfp.lastPage}/findByCon1.action">尾页</a>
								<!-- <font color="#ABA8AB">尾页</font> -->
						</c:otherwise>
				 	</c:choose>
			</td>
		</tr>
	</table>
</body>
</html>