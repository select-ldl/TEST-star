<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*,com.bean.*,java.util.*" %>

<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
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
<script>
	<!-- 
		function check_type(form)
		{
			if(form.t_name.value=="")
			{
				alert("��������������");
				form.t_name.focus();
				return false;
			}
		}
	
	 -->
</script>

<center>
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td width="52" height="35" align="center" bgcolor="#99CCFF" class="STYLE2">���</td>
    <td width="234" align="center" bgcolor="#99CCFF" class="STYLE2">֧����ʽ</td>
    <td height="35" colspan="2" align="center" bgcolor="#99CCFF" class="STYLE2">����</td>
    </tr>
	<%
    List<Payment> all=(List)session.getAttribute("all");
    if(all.size()!=0){
      for(int i=0;i<all.size();i++){
      %>
  <tr>
    <td height="30" align="center" class="STYLE1"><%=all.get(i).getPay_id() %></td>
    <td height="30" align="center" class="STYLE2"><%=all.get(i).getPay_payment() %></td>
    <td width="123" height="30" align="center" class="STYLE1">[ <a href="login3?op=disp2&pay_id=<%=all.get(i).getPay_id() %>">�鿴/�޸�</a> ]</td>
    <td width="101" height="30" align="center" class="STYLE1">[ <a href="login3?op=delete&pay_id=<%=all.get(i).getPay_id() %>">ɾ��</a> ]</td>
  </tr>
 <%
      }
    }
 %>
  <tr>
    <td height="30" colspan="4" align="right"><p align="center" class="STYLE1">�� <span class="STYLE1">4</span> ����¼,��<span class="STYLE1"> 1 </span>��ʾ,��ǰҳ<strong>:</strong> �� <span class="STYLE1">1</span>ҳ
      
</p></td>
  </tr>
</table>
</center>
