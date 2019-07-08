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
 <title>编辑联系人</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<script src="script/common.js"></script>
	<script src="script/jquery-1.4.1.js"></script>
	<script src="js/linkman_edit.js"></script>
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
 <div class="page_title">客户信息管理 &gt; 客户信息 &gt; 联系人 &gt; 编辑联系人</div>
<form action="" method="post" id="updatelkmform">
<div class="button_bar">
	<!-- <a href="help.html"><input class="common_button"  type="button" value="帮助"></a>
	<a href="list.html"><button class="common_button" type="submit">保存/返回</button></a> -->
</div>
<input type="hidden" name="lkmId" value="${findLinkManByCstId.lkmId }"/>
<input type="hidden" name="lkmCustId" value="${findLinkManByCstId.lkmCustId }" />
<input type="hidden" name="lkmCustNo" value="${findLinkManByCstId.lkmCustNo }"/>
<input type="hidden" name="lkmCustName" value="${findLinkManByCstId.lkmCustName }"/>
<table class="query_form_table" id="table1">
	<tr>
		<th>姓名</th>
		<td><input  name="lkmName" value="" size="20" id="lkm_nameinp"/><span class="red_star" id="lkm_nameinpspan">*</span></td>
		<th>性别</th>
		<td>
			<input type="radio" name="lkmSex" value="男" checked />男
			<input type="radio" name="lkmSex" value="女" />女
		</td>
	</tr>
	<tr>
		<th>职位</th>
		<td><input name="lkmPostion" value="" size="20" id="lkm_postion"/><span class="red_star" id="lkm_postionspan">*</span></td>
		<th>办公电话</th>
		<td><input name="lkmTel" value="" size="20" id="lkm_tel"/><span class="red_star" id="lkm_telspan">*</span></td>
	</tr>	
	<tr>
		<th>手机</th>
		<td><input name="lkmMobile" value="" size="20" /></td>
		<th>备注</th>
		<td><input name="lkmMemo" value="" size="20" /></td>
	</tr>
</table>
</form>
</body>
</html>