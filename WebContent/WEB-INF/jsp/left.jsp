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
<title>My JSP 'left.jsp' starting page</title>
<meta charset="UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<LINK href="css/style_cn.css" type=text/css rel=stylesheet>
<LINK href="css/leftPage.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript>
function forward(url) {
		parent.frames["mainFrame"].location.href=url;
	}
function show(num,state,msize){ 
	if(state==1){      
		document.getElementById("tr0_"+num).state = "0";
		document.getElementById("tr1_"+num).style.display = "";
	}else{
		document.getElementById("tr0_"+num).state = "1";
		document.getElementById("tr1_"+num).style.display = "none";
	}
	hide(num,msize);
}
function hide(num,msize){
	for(var i=0; i<msize; i++){
		if(i!=num){
		
			var state = document.getElementById("tr0_"+i).state;
			if(state!=1){
				document.getElementById("tr0_"+i).state = "1";
				document.getElementById("tr1_"+i).style.display = "none";
				var src = document.getElementById("img_"+i).src;
				document.getElementById("img_"+i).src = src.substr(0,src.lastIndexOf("/"))+"/zhankai.png";
			}
		}
	}
}

</SCRIPT>
</head>
<body>
   <TABLE class=bigtable cellSpacing=0 cellPadding=0 width=156 border=0>
		<!-- title -->
		<TBODY>
			<TR>
				<TD class=buttom_lr_line width="100%" background=images/zcdbtbj.png
					height=30>
					<DIV class=divfont align=center>
						操作菜单
					</DIV>
				</TD>
			</TR>
			<TR>
				<!--  内容及下环线开始   -->
				<TD width="100%">
					<!--  循环主menu开始   -->
					<c:if test="${sysUser.sysRole.roleId>=2&&sysUser.sysRole.roleId<=4}">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_0 onClick="show('0',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="149" align=center
										border=0 height="24" style="">
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/khgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">经销</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_0 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_0 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
									<c:if test="${sysUser.sysRole.roleId==3||sysUser.sysRole.roleId==2}">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="" 
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khbf.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="sale/1/saleChance.action" target="mainFrame">经销机会管理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</c:if>
									<c:if test="${sysUser.sysRole.roleId==4||sysUser.sysRole.roleId==2}">
									<table class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<tbody>
											<tr>
												<td onMouseOver="this.className='bgstyle1';"
													onclick=""
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<table cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<tbody>
															<tr>
																<td width=23 height=23>
																	<div align=center>
																		<img height=17 src="images/khbf.png" width=17>
																	</div>
																</TD>
																<TD class=unnamed1><a href="sale/1/saleDev.action" target="mainFrame">顾客开发计划</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</c:if> 
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					</c:if>
					
					<c:if test="${sysUser.sysRole.roleId<=4}">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_1 onClick="show('1',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="152" align=center
										border=0 height="24">
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/khgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">顾客信息</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_1 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_1 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">

									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- 避免点击客户信息管理边框出现错误 
													 onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khbf.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="account/1/accountM.action" target="mainFrame">顾客信息管理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					</c:if>
	
						<c:if test="${sysUser.sysRole.roleId>=2 && sysUser.sysRole.roleId<=4 }">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_2 onClick="show('2',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/xsgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">服务管理</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_2 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_2 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
							<c:if test="${sysUser.sysRole.roleId==2||sysUser.sysRole.roleId==4 }">		
								<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<!-- onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/wdzx.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cstservice/cstServicesCj.action?usrName=${sysUser.usrName}" target="mainFrame">服务创建</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									
	                                 <TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- 避免点击服务创建出错onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cstservice/1/serviceChuLi.action" target="mainFrame">服务处理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</c:if>
									
									<c:if test="${sysUser.sysRole.roleId==2||sysUser.sysRole.roleId==3 }">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cstservice/1/cstServicesFp.action" target="mainFrame">服务分配</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									
									
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="cstservice/1/cstServicesFk.action" target="mainFrame">服务反馈</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</c:if>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</c:if>
					
					<c:if test="${sysUser.sysRole.roleId<=3}">	
							<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_3 onClick="show('3',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/xsgl.png" width=17>
													</DIV>
												</TD>
												<TD class=fBlack onClick="">经营统计报表</TD>
												<TD width=25>
													<DIV align=center>
														<IMG id=img_3 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_3 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick=""
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/wdzx.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="chart/StatisticalContribute1.action" target="mainFrame">客户贡献分析</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/khjlxrdr.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="chart/StatisticalMakeup.action" target="mainFrame">客户构成分析</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE> 
					
					</c:if>
					<c:if test="${sysUser.sysRole.roleId<=4 }">
					<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_4 onClick="show('4',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/htgl.png" width=17>
													</DIV>
												</TD>


												<TD class=fBlack onClick="">库存产品数据</TD>

												<TD width=25>
													<DIV align=center>
														<IMG id=img_4 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
 						    <TR id=tr1_4 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- onclick="forward('')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/htlb.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="basic/1/basicProduct.action" target="mainFrame">查询产品信息</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('basic/1/basicStorage.action')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/htfl.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="basic/1/basicStorage.action" target="mainFrame">查询库存</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
						</TBODY>
					</TABLE>
					</c:if>	
						<c:if test="${sysUser.sysRole.roleId<=2 }">
							<TABLE cellSpacing=0 cellPadding=0 width=156 bgColor=#d3dae1
						border=0>
						<TBODY>
							<TR id=tr0_5 onClick="show('5',this.state,'9');" state="1">
								<TD class=buttom_lr_line onMouseOver="this.style.cursor='hand';"
									onmouseout="this.style.cursor='auto';"
									background=images/zlmbtbj.png height=22>
									<TABLE cellSpacing=0 cellPadding=0 width="97%" align=center
										border=0>
										<TBODY>
											<TR>
												<TD width=23 height=22>
													<DIV align=center>
														<IMG height=17 src="images/htgl.png" width=17>
													</DIV>
												</TD>


												<TD class=fBlack onClick="">系统基础管理</TD>

												<TD width=25>
													<DIV align=center>
														<IMG id=img_4 src="images/zhankai.png">
													</DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<TR id=tr1_5 style="DISPLAY: none">
								<TD class=buttom_lr_line style="BACKGROUND-COLOR: #fafcff">

									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onclick="forward('sysrole/selectAllSysRole.action')"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/tjht.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="sysrole/selectAllSysRole.action" target="mainFrame">角色管理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23> 
													<!-- onclick="forward('sysuser/1/findAllUser.action')"-->
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/htlb.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="sysuser/1/findAllUser.action" target="mainFrame">用户管理</a></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=buttom_line
										onMouseOver="this.style.cursor='hand';"
										onmouseout="this.style.cursor='auto';" cellSpacing=0
										cellPadding=0 width=152 align=center border=0>
										<TBODY>
											<TR>
													<!-- onclick="forward('log/logall?curpage=1')" -->
												<TD onMouseOver="this.className='bgstyle1';"
													onmouseout="this.className='bgstyle';"
													background=images/zcdbj.png height=23>
													<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center
														border=0>
														<TBODY>
															<!-- <TR>
																<TD width=23 height=23>
																	<DIV align=center>
																		<IMG height=17 src="images/htfl.png" width=17>
																	</DIV>
																</TD>
																<TD class=unnamed1><a href="systemset/log_review.html" target="mainFrame">日志查看</a></TD>
															</TR> -->
														</TBODY>
													</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
						</TBODY>
					</TABLE>
						</c:if>
					
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	</TD>
	</TR>
	</TBODY>
	</TABLE>
	</TD>
	</TR>
	</TBODY>
	</TABLE>
	<!--  循环主menu结束   -->
	</TD>
	<!--  内容及下环线开始   -->
	</TR>
	</TBODY>
	</TABLE>
</body>
</html>