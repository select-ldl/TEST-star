<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*,com.bean.*"%>

<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}

.STYLE2 {
	font-size: 14px;
}

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
<%
Shop_customer sc1=(Shop_customer)session.getAttribute("sc");
if(sc1!=null){
%>
<center>
	<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0"
		cellspacing="0" style="border-collapse: collapse">
		<!--DWLayoutTable-->
		<tr>
			<td height="30" colspan="2" align="center" bgcolor="#99CCFF"><span
				class="STYLE2">�ͻ���ϸ����</span></td>
		</tr>
		<tr>
			<td height="30" colspan="2" align="right"><a
				href="cust_select_order.jsp?c_name=����" class="STYLE1">�鿴������Ϣ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">ͷ��ѡ��</span>:&nbsp;</td>
			<td height="30" align="left">&nbsp;&nbsp;&nbsp; <img
				src="<%=sc1.getC_header()%>"></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">�û���</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;
				<%=sc1.getC_name() %></td>
		</tr>
		<tr>
			<td width="28%" height="30" align="right"><span class="STYLE1">����</span>:&nbsp;</td>
			<td width="72%" height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_pass() %></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">��ϵ�绰</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_phone() %></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">������ʾ</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_question() %></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">�����</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_answer() %></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">���ڵ�ַ</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_address() %></td>
		</tr>
		<tr>
			<td height="30" align="right"><span class="STYLE1">E_mail</span>:&nbsp;</td>
			<td height="30" align="left" class="STYLE2">&nbsp;&nbsp;&nbsp;<%=sc1.getC_email() %></td>
		</tr>
		<tr>
			<td height="35" colspan="2" align="center"><input type="button"
				class="STYLE1" onclick="window.location.href='cust_all.jsp'"
				value=" ȷ�� " /> &nbsp;<input type="button" class="STYLE1"
				onclick="history.go(-1);" value=" ���� " /></td>
		</tr>

	</table>
</center>
<%
 }
 %>