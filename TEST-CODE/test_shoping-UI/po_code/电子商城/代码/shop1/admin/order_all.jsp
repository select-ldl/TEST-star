<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*,com.bean.*,java.util.*" %>


<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {font-size: 14px}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
-->
</style>
<center>
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td width="66" height="30" align="center" bgcolor="#99CCFF" class="STYLE2">�û���</td>
    <td width="94" align="center" bgcolor="#99CCFF" class="STYLE2"><span class="STYLE2">������</span></td>
    <td width="95" align="center" bgcolor="#99CCFF" class="STYLE2"><span class="STYLE2">����ʱ��</span></td>
    <td width="77" align="center" bgcolor="#99CCFF" class="STYLE2"><span class="STYLE2">�ܽ��</span></td>
    <td colspan="2" align="center" bgcolor="#99CCFF" class="STYLE2"><span class="STYLE2">����</span></td>
    </tr>
    <%
    List<Orders> all=(List)session.getAttribute("all");
    if(all.size()!=0){
      for(int i=0;i<all.size();i++){
      %>
  <tr>
    <td height="35" align="center" class="STYLE2"><%=all.get(i).getOrder_user() %></td>
    <td height="32" align="center" class="STYLE2"><%=all.get(i).getOrder_id() %></td>
    <td height="32" align="center" class="STYLE2"><%=all.get(i).getOrder_time() %></td>
    <td align="center" class="STYLE2"><%=all.get(i).getOrder_sum() %></td>
    <td width="107" height="32" align="center" class="STYLE1">
    <span class="STYLE1">[ <a href="login4?op=disp2&order_id=<%=all.get(i).getOrder_id() %>">�鿴��ϸ����</a> ]</span></td>
    <td width="67" align="center" class="STYLE1">
    <span class="STYLE1">[ <a href="login4?op=delete&order_id=<%=all.get(i).getOrder_id() %>">ɾ��</a> ]</span></td>
  </tr>
  <%
      }
    }
  %>
   <tr>
    <td height="30" colspan="7" align="center">
    <p align="center" class="STYLE1">�� <span class="STYLE1">4</span> ����¼,��<span class="STYLE1"> 1 </span>��ʾ,��ǰҳ<strong>:</strong> �� <span class="STYLE1">1 </span>ҳ
     
</p></td>
   </tr>
</table>
</center>