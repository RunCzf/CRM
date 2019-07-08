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
<title>服务管理-操作</title>
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
   &nbsp;

			<table width="100%" cellSpacing=0 cellPadding=0 border="0px">
				<tr>
					<TD class="page_title">客户服务管理</TD>
					<TD class="page_title_middle">&nbsp;</TD>
					<TD width=3><IMG height=32
						src="images/m_mpr.gif" width=3>
					</TD>
				</tr>
			</table>

			<table class="query_form_table" cellSpacing=1 cellPadding=1>
				<tr>
					<td width=100% height=30 align=left
						background="images/m_table_top.jpg"
						colspan="6"><strong>&nbsp;服务处理</strong></td>
				</tr>
				<tr>
					<th>编号</th>
					<td><input type="text" name="svrId" id="cs.svr_id"
						value="${allServices.svrId }" /></td>
					<th>服务类型</th>
					<td><input type="text" name="svrType" id="cs.svr_type"
						value="${allServices.svrType }" /></td>
				</tr>
				<tr>
					<th>概要</th>
					<td colspan="3"><input type="text" name="svrTitle"
						id="cst.svr_title" value="${allServices.svrTitle }" /></td>
				</tr>
				<tr>
					<th>客户</th>
					<td><input type="text" name="svrCustName"
						id="cst.svr_cust_name" value="${allServices.svrCustName }" /></td>
					<th>状态</th>
					<td><input type="text" name="svrStatus"
						id="cst.svr_status" value="已分配"></td>
				</tr>
				<tr>
					<th>服务请求</th>
					<td colspan="3"><input type="text" name="svrQequest"
						id="cst.svr_request" value="${allServices.svrQequest }" /> <br></td>
				</tr>
				<tr>
					<th>创建人</th>
					<td><input type="text" name="svrCreateBy"
						id="cst.svr_create_by" value="${allServices.svrCreateBy }" /></td>
					<th>分配给</th>
					<td><input type="text" name="svrDueTo"
						id="cst.svr_due_to" value="${allServices.svrDueTo }" /></td>
				</tr>
			</table>
			
			<br />
			
			<form
				action=""
				name="frm" method="post">
				<input type="hidden" name="svrStatus" id="svr_status" /> <input
					type="hidden" name="svrId" value="" />
				<table class="query_form_table" id="table1" cellSpacing=1
					cellPadding=1>
					<tr>
						<th>服务处理</th>
						<td colspan="5"><input type="text" name="svrDeal"
							id="cs.svr_deal" value="" size="53" /> <span
							class="red_star">*</span></td>
					</tr>
					<tr>
						<th>处理人</th>
						<td><input name="text" value=""
							name="" id="" size="20" /> <span class="red_star">*</span></td>
					</tr>

					<tr>
						<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
							<a href="help.html"><!-- <input
								class="common_button" type="button" value="帮助"> --></a>
							&nbsp;&nbsp;&nbsp;
							<button class="common_button">保存</button>
						</td>
					</tr>
				</table>
			</form>
	<br />
   
</body>
</html>