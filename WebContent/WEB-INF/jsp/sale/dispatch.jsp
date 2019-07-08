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
<link href="css/test1.css" rel="stylesheet" type="text/css">
<script src="script/common.js"></script>
</head>
<body>
  <table width="100%" cellSpacing=0 cellPadding=0 border="0px">
<tr>
   <TD class="page_title">销售机会管理</TD>
   <TD class="page_title_middle">&nbsp;</TD>
   <TD width=3><IMG height=32 src="images/m_mpr.gif" width=3></TD>
</tr>
</table>

<table class="query_form_table" cellSpacing=1 cellPadding=1>
	<tr>
    	<td  width=100% height=30 align=left background = "images/m_table_top.jpg" colspan="6"><strong>&nbsp;指派销售机会</strong></td>
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
		<td colspan="3">${sessionScope.oneSalChance.chcCreateBy}</td>
	</tr>
</table>
<br />

<form action="sale/dispatchSale.action?chcId=${sessionScope.oneSalChance.chcId}"  method="post">
<table class="query_form_table" id="table1" cellSpacing=1 cellPadding=1>
	<tr>
    	<td  width=100% height=30 align=left background = "images/m_table_top.jpg" colspan="6"><strong>&nbsp;指派</strong></td>
    </tr>
	<tr>
		<th>指派给</th>
		<td>
		<c:choose>
			<c:when test="${sessionScope.oneSalChance.chcDueTo == null || sessionScope.oneSalChance.chcDueTo == ''}">
				<select name="chcDueTo">
				
					<option value="">请选择..</option>
					<c:forEach var="managerName" items="${sessionScope.mngName}">
						
						<option value="${managerName.usrName }">${managerName.usrName}
						</option>
					</c:forEach>
				</select> 
			 <span class="red_star">*</span>
			</c:when>
			 <c:otherwise>
		   <select  disabled="disabled">
				<option>${sessionScope.oneSalChance.chcDueTo}</option>
			</select>
			</c:otherwise>
			 </c:choose>
		</td>
	</tr>
	
	<tr>
    	<td width=100% height=32 align=center colspan=6 bgcolor=#ffffff>
        	<a href="help.html"><!-- <input class="common_button"  type="button" value="帮助"> --></a>&nbsp;&nbsp;&nbsp;
			<input type="submit" value="保存">
			 </td>
    </tr>
</table>
</form>
</body>
</html>