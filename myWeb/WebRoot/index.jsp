<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "entity.Major" %>
<%@ page import = "util.DBOperate" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    <base href="<%=basePath%>">
    
    <title>自动排课系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
  	<h1>欢迎来到自动排课系统</h1>
  	<center>
  	<table width="750" height="60" cellpadding="0" cellspacing="0" border="0" style="width: 1400px; ">
  	  <tr>
  		<td style="width: 1300px; ">
  		<table border="1" data-role="table" id="table-1"
  				class="ui-responsive" style="height: 70px; width: 1200px; ">
  				<thead>				
  					<tr>
  						<th data-priority="0" style="width: 50px; ">年级</th>
  						<th data-priority="10" style="width: 100px; ">专业</th>
  						<th data-priority="20" style="width: 50px; ">专业人数</th>
  						<th data-priority="30" style="width: 200px; ">课程名称</th>
  						<th data-priority="40" style="width: 100px; ">选修类型</th>
  						<th data-priority="50" style="width: 50px; ">学分</th>
  						<th data-priority="60" style="width: 50px; ">学时</th>
  						<th data-priority="70" style="width: 50px; ">实验学时</th>
  						<th data-priority="80" style="width: 50px; ">上机学时</th>
  						<th data-priority="90" style="width: 50px; ">起讫周序</th>
  						<th data-priority="100" style="width: 50px; ">任课教师</th>
  						<th data-priority="110" style="width: 50px; ">备注</th>
  					</tr>
  				</thead>
  		</table>
  	 	<%
  			DBOperate dboperate = new DBOperate();
  			ArrayList<Major> list = dboperate.getALLMajor();
  			if(list != null && list.size() > 0){
  				for(int i = 0; i < list.size(); i++){
  				Major major = list.get(i);
  		%>		
  			<table data-role="table" id="table-1"
  				class="ui-responsive" style="height: 70px; width: 1200px; ">
  				<thead>				
  					<tr>
  						<th data-priority="0" style="width: 50px; "></th>
  						<th data-priority="10" style="width: 100px; "></th>
  						<th data-priority="20" style="width: 50px; "></th>
  						<th data-priority="30" style="width: 200px; "></th>
  						<th data-priority="40" style="width: 100px; "></th>
  						<th data-priority="50" style="width: 50px; "></th>
  						<th data-priority="60" style="width: 50px; "></th>
  						<th data-priority="70" style="width: 50px; "></th>
  						<th data-priority="80" style="width: 50px; "></th>
  						<th data-priority="90" style="width: 50px; "></th>
  						<th data-priority="100" style="width: 50px; "></th>
  						<th data-priority="110" style="width: 50px; "></th>
  					</tr>
  				</thead>	
  				<tbody> 					
  					<tr>
  						<td style="width: 50px; "><%=major.getGrade()%></td>
  						<td style="width: 100px; "><%=major.getMajor()%></td>
  						<td style="width: 50px; "><%=major.getPeople()%></td>
  						<td style="width: 200px; "><%=major.getCname()%></td>
  						<td style="width: 100px; "><%=major.getEtype()%></td>
  						<td style="width: 50px; "><%=major.getCredit()%></td>
  						<td style="width: 50px; "><%=major.getChour()%></td>
  						<td style="width: 50px; "><%=major.getOtime()%></td>
  						<td style="width: 50px; "><%=major.getCtime()%></td>
  						<td style="width: 50px; "><%=major.getWeek()%></td>
  						<td style="width: 50px; "><%=major.getTeacher()%></td>
  						<td style="width: 50px; "><%=major.getRemark()%></td>
  					</tr>
  				</tbody>
  			</table> 			
  		<%
  				} 
  		} 			
  		%>
  		</td>
  	  </tr>
  	</table>
  	</center>
  </body>
</html>
