<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="dbc"  class="com.bean.DBConn"  scope="page"/>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px;}
.STYLE2{font-size: 14px}
.STYLE3 {
	font-size: 36px;
	font-family: "���ռ��п�";
	color: #000099;
}
body {
	margin-top: 0px;
	margin-bottom: 0px;
}
-->
</style>
<center>
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
	 <tr>
			<td height="48" colspan="2" align="center" bgcolor="#eeeeee">
            <span class="STYLE3">�����̳� ����뽨�� </span></td>
	</tr>
  <%
  String sql="select * from idea";
  ResultSet rs=dbc.query(sql);
  while(rs.next()){
  %>
      <tr>
        <td width="127" rowspan="4" align="center"><p><img src="<%=rs.getString("c_header") %>" width="32" height="32"></p></td>
        <td width="619" height="20" align="right" bgcolor="#99CCFF"> 
        <span class="STYLE1">[������]&nbsp;<%=rs.getString("c_name") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        [����ʱ��]&nbsp;&nbsp;<%=rs.getString("new_time") %></span>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td width="619" height="45">
        <span class="STYLE1">&nbsp;[����]&nbsp;&nbsp;
        <span class="STYLE2"><%=rs.getString("new_message") %></span></span></td>
      </tr>
      <tr>
        <td width="619" height="20" align="right">
        <span class="STYLE1">[�ظ���]&nbsp;����Ա&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        [����ʱ��]&nbsp;&nbsp;<%=rs.getString("re_time") %>&nbsp;&nbsp;</span></td>
      </tr>
      <tr>
       <td height="45"><span class="STYLE1">&nbsp;
       <span class="STYLE1">[�ظ�]</span>&nbsp;&nbsp;
       <span class="STYLE2"><%=rs.getString("re_message") %></span></span></td>
      </tr>
    <%
  }
    %>
      <tr>
        <td height="30" colspan="2">
        <p align="center" class="STYLE1">�� 
        <span class="STYLE1">4</span> ����¼,��<span class="STYLE1"> 2 </span>��ʾ,��ǰҳ<strong>:</strong> �� <span class="STYLE1">1 </span>ҳ
       
</p></td>
    </tr>
</table>
</center>