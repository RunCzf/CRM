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
<title>编辑</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/common.js"></script>
<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
<script type="text/javascript" src="js/edit.js"></script>

<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
<script type="text/javascript">
	$(function(){
		var msg='${msg}'
		if(msg!=null && msg != ""){
			alert(msg);
		}
		var a="${sessionScope.byCstNo.custRegion}";
		$("#select1 option").each(function(){
			if($(this).val() == a){
			$(this).attr("selected","selected");
			}
		});
		
		var b="${sessionScope.byCstNo.custLevelLabel}";
		$("#select2 option").each(function(){
			if($(this).val() == b){
			$(this).attr("selected","selected");
			}
		});
		
		var c="${sessionScope.byCstNo.custSatisfy}";
		$("#select3 option").each(function(){
			if($(this).val() == c){
			$(this).attr("selected","selected");
			}
		});
		
		var d="${sessionScope.byCstNo.custCredit}";
		$("#select4 option").each(function(){
			if($(this).val() == d){
			$(this).attr("selected","selected");
			}
		});
		
		var e="${sessionScope.byCstNo.custManagerName}";
		$("#select5 option").each(function(){
			if($(this).val() == e){
			$(this).attr("selected","selected");
			}
		});
		
		});
</script>
<c:remove var="msg" scope="session"/>
</head>
<body>
  <div class="page_title">客户信息管理 &gt; 客户信息</div>
	<!--将表单提交给controller进行顾客信息修改保存 存入数据库  -->
	<form action="account/editAcc.action" method="post" >
		<div class="button_bar">
			<!-- <a href="help.html"> <input class="common_button" type="button"
				value="帮助"></a> -->
			<a href="list.html"><input class="common_button" type="submit" value="保存/返回"  /></a>
		</div>
		<input type="hidden" name="custId" value="${byCstNo.custId }" />

		<table class="query_form_table">
			<tr>
				<th>客户编号</th>
				<td><input type="hidden" name="custId"
					value="${byCstNo.custId }" /></td>
				<th>名称</th>
				<td><input name="custName" value="${byCstNo.custName }"
					id="cust_name" /><span class="red_star" id="cust_namespan">*</span></td>
			</tr>
			<tr>
				<th>地区</th>
				<td><select name="custRegion" id="select1">
						<option value="0">请选择...</option>
						<option value="北京">北京</option>
						<option value="华北">华北</option>
						<option value="北京">北京</option>
						<option value="中南">中南</option>
						<option value="东北">东北</option>
						<option value="西部">西部</option>
				</select > <span class="red_star">*</span></td>
				<th>客户经理</th>
				<td>
				<%-- <c:forEach var="allSvrDueTo" items="${sessionScope.mngName}">
											<option value="${allSvrDueTo.usrName}">${allSvrDueTo.usrName}
											</option>
										</c:forEach> --%>
				<select name="custManagerName" id="select5">
						<c:forEach var="allMangeTo" items="${sessionScope.mgNames}">
						<option selected="selected" value="${byCstNo.custManagerName}">${byCstNo.custManagerName}</option>
						
						</c:forEach>	
				</select> <span class="red_star">*</span></td>
			</tr>
			<tr>
				<th>客户等级</th>
				<td><select name="custLevelLabel" id="select2">
						<option value="请选择">请选择...</option>
						<option value="普通客户">普通客户</option>
						<option value="重点开发客户">重点开发客户</option>
						<option value="大客户">大客户</option>
						<option value="合作伙伴">合作伙伴</option>
						<option value="战略合作伙伴">战略合作伙伴</option>
				</select><span class="red_star">*</span></td>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th>客户满意度</th>
				<td><select name="custSatisfy" id="select3">
						<option value="0">未指定</option>
						<option value="5">☆☆☆☆☆</option>
						<option value="4">☆☆☆☆</option>
						<option value="3">☆☆☆</option>
						<option value="2">☆☆</option>
						<option value="1">☆</option>
				</select><span class="red_star">*</span></td>
				<th>客户信用度</th>
				<td><select name="custCredit" id="select4">
						
						<option value="0">未指定</option>
						<option value="5">☆☆☆☆☆</option>
						<option value="4">☆☆☆☆</option>
						<option value="3">☆☆☆</option>
						<option value="2">☆☆</option>
						<option value="1">☆</option>
				</select><span class="red_star">*</span></td>
			</tr>
		</table>
		<br />
		<table class="query_form_table" id="table1">
			<tr>
				<th>地址</th>
				<td><input name="custAddr" id="cust_addr"
					value="${byCstNo.custAddr }" /><span id="cust_addrspan">*</span></td>
				<th>邮政编码</th>
				<td><input name="custZip" size="20" id="cust_zip"
					value="${byCstNo.custZip }" /><span class="red_star"
					id="cust_zipspan">*</span></td>
			</tr>
			<tr>
				<th>电话</th>
				<td><input name="custTel" size="20" id="cust_tel"
					value="${byCstNo.custTel }" /><span class="red_star"
					id="cust_telspan">*</span></td>
				<th>传真</th>
				<td><input name="custFax" size="20" id="cust_fax"
					value="${byCstNo.custFax }" /><span class="red_star"
					id="cust_faxspan">*</span></td>
			</tr>
			<tr>
				<th>网址</th>
				<td><input name="custWebsite" size="20" id="cust_website"
					value="${byCstNo.custWebsite }" /><span class="red_star"
					id="cust_websitespan">*</span></td>
				<th></th>
				<td></td>
			</tr>
		</table>
		<br />
		<table class="query_form_table" id="table2">
			<tr>
				<th>营业执照注册号</th>
				<td><input name="custLicenceNo" size="20"
					value="${byCstNo.custLicenceNo }" /></td>
				<th>法人</th>
				<td><input name="custChieftain" size="20" id="cust_chieftain"
					value="${byCstNo.custChieftain }" /><span class="red_star"
					id="cust_chieftainspan">*</span></td>
			</tr>
			<tr>
				<th>注册资金（万元）</th>
				<td><input name="custBankroll" size="20"
					value="${byCstNo.custBankroll }" /></td>
				<th>年营业额</th>
				<td><input name="custTurnover" size="20"
					value="${byCstNo.custTurnover }" /></td>
			</tr>
			<tr>
				<th>开户银行</th>
				<td><input name="custBank" size="20" id="cust_bank"
					value="${byCstNo.custBank }" /><span class="red_star"
					id="cust_bankspan">*</span></td>
				<th>银行帐号</th>
				<td><input name="custBankAccount" size="20"
					id="cust_bank_account" value="${byCstNo.custBankAccount }" /><span
					class="red_star" id="cust_bank_accountspan">*</span></td>
			</tr>
			<tr>
				<th>地税登记号</th>
				<td><input name="custLocalTaxNo" size="20"
					value="${byCstNo.custLocalTaxNo }" /></td>
				<th>国税登记号</th>
				<td><input name="custNationalTaxNo" size="20"
					value="${byCstNo.custNationalTaxNo }" /></td>
			</tr>
			<tr>
				<th>客户状态</th>
				<td><select name="custStatus">
					<c:choose>
						<c:when test="${byCstNo.custStatus==0 }">
						<option value="${byCstNo.custStatus}">流失</option>
						<option value="1">正常</option>
						</c:when>
						<c:otherwise>
						<option selected="selected" value="${byCstNo.custStatus}">正常</option>
						<option value="0">流失</option>
						</c:otherwise>
					</c:choose>
				</select>
			</tr>
		</table>
	</form>
</body>
</html>