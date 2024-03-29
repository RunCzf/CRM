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
<title>服务反馈</title>
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
					<TD class="page_title">客户服务管理</TD>
					<TD class="page_title_middle">&nbsp;</TD>
					<TD width=3><IMG height=32
						src="images/m_mpr.gif" width=3>
					</TD>
				</tr>
			</table>
			<form
				action="cstservice/1/findByConFanK.action"
				name="frm" method="post">
				<table class="query_form_table" cellSpacing=1 cellPadding=1>
					<tr>
						<td width=100% height=30 align=left
							background="images/m_table_top.jpg"
							colspan="6"><strong>&nbsp;服务反馈</strong></td>
					</tr>
					<tr>
						<th height="28">客户</th>
						<td><input type="text" name="svrCustName"/></td>
						<th height="28">概要</th>
						<td><input type="text" name="svrTitle" /></td>
					</tr>
					<tr>
						<th height="28">服务类型</th>
						<td><select name="svrType" id="svrType">
								<option value="">全部</option>
								<option value="咨询">咨询</option>
								<option value="投诉">投诉</option>
								<option value="建议">建议</option>
						</select></td>
						<th height="22">状态</th>
						<td><input type="text" name="svrStatus" value="已处理" /></td>
					</tr>
					<tr>
						<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
							<a href="help.html"><!-- <input class="common_button" type="button"
								value="帮助"> --></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="common_button">查询</button>
						</td>
					</tr>
				</table>
			</form>
			<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
				<tr>
					<TD class="page_title">检索结果</TD>
					<TD class="page_title_middle">&nbsp;</TD>
					<TD width=3><IMG height=32
						src="images/m_mpr.gif" width=3>
					</TD>
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
					<th>操作</th>
				</tr>
					<c:forEach var="service" items="${ sessionScope.pageInfoFk.list}" varStatus="status">
					<tr>
						<td class="list_data_number">${service.svrId }</td>
						<td class="list_data_text">${service.svrCustName }</td>
						<td class="list_data_ltext">${service.svrTitle }</td>
						<td class="list_data_text">${service.svrType}</td>
						<td class="list_data_text">${service.svrCreateBy}</td>
						<td class="list_data_text"></td>
						<td><a
							href="cstservice/findFanKJg.action?svrId=${service.svrId }">
								<img
								src="images/bt_feedback.gif"
								class="op_button" />
						</a></td>
					</tr>
					</c:forEach>
	         <tr>
			<td colspan="8" align="center">共${sessionScope.pageInfoFk.total }条记录 每页 6
				条 第${sessionScope.pageInfoFk.pageNum }页 
				<c:choose>
					<c:when test="${sessionScope.pageInfoFk.isFirstPage }">
						<font color="#ABA8AB">首页</font>
					</c:when>
					<c:otherwise>
					<a href="cstservice/1/findByConFanK1.action">首页</a>
					</c:otherwise>
				
				</c:choose>
						<c:choose>
						<c:when test="${sessionScope.pageInfoFk.hasPreviousPage }">
							<a href="cstservice/${sessionScope.pageInfoFk.prePage }/findByConFanK1.action">上一页</a>
						</c:when>
						<c:otherwise>
							<font color="#ABA8AB">上一页</font>
						</c:otherwise>
					</c:choose>
			
				<c:choose>
							<c:when test="${sessionScope.pageInfoFk.hasNextPage }">
								<a href="cstservice/${sessionScope.pageInfoFk.nextPage }/findByConChuL1.action">下一页</a>
							</c:when>
							<c:otherwise>
								<font color="#ABA8AB">下一页</font>
							</c:otherwise>
					</c:choose>
						
					<c:choose>
					 	<c:when test="${sessionScope.pageInfoFk.isLastPage }">
					 		<font color="#ABA8AB">尾页</font>
					 	</c:when>
					 	<c:otherwise>
					 		<a href="cstservice/${sessionScope.pageInfoFk.lastPage}/findByConFanK1.action">尾页</a>
						</c:otherwise>
				 	</c:choose>
			</td>
		</tr>
			</table>

</body>
</html>