<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*,com.bean.*" %>


<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
.STYLE2 {
	font-size: 14px;
}

-->
</style>
<script>
	<!--
	function check_product(form)
	{
		if(form.p_type.value=="")
		{
			alert("��ѡ����Ʒ����");
			form.p_type.focus();
			return false;
		}
		if(form.p_id.value=="")
		{
			alert("��������Ʒ��ID");
			form.p_id.focus();
			return false;
		}	
		if(form.p_name.value=="")
		{
			alert("��������Ʒ������");
			form.p_name.focus();
			return false;
		}	
		if(form.p_price.value=="")
		{
			alert("��������Ʒ�ļ۸�");
			form.p_price.focus();
			return false;
		}	
		if(form.p_quantity.value=="")
		{
			alert("��������Ʒ������");
			form.p_quantity.focus();
			return false;
		}	
		if(form.p_image.value=="")
		{
			alert("�������Ʒ��ͼƬ");
			form.p_image.focus();
			return false;
		}	
	}
	
	-->
</script>
<%
Product pd=(Product)session.getAttribute("pd");
if(pd!=null){
%>
<center>
<form action="login6?op=modify&p_id=<%=pd.getP_id() %>" method="post" onSubmit="return check_product(this);">
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="30" colspan="2" align="center" bgcolor="#99CCFF"><span class="STYLE2">�鿴/�޸���Ʒ��Ϣ</span></td>
    </tr>
  <tr>
    <td width="146" height=40 align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td width="348" align="left">&nbsp;&nbsp;
      <select name="p_type">
	  <option selected value="<%=pd.getP_type() %>"><%=pd.getP_type() %></option>
	    <option value="����ר��">����ר��</option>
	  	<option value="�����ϵ��">�����ϵ��</option>
	  	<option value="�����">�����</option>
	  	<option value="����ϵ��">����ϵ��</option>
	  	<option value="���ӻ�ϵ��">���ӻ�ϵ��</option>
	  	<option value="ϴ�»�ϵ��">ϴ�»�ϵ��</option>

    </select></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��ƷID</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_id" size="15" value="<%=pd.getP_id() %>"/></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_name" size="30" value="<%=pd.getP_name() %>"  /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ�۸�( RMB )</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_price" size="10" value="<%=pd.getP_price() %>" /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_quantity" size="10" value="<%=pd.getP_quantity() %>"  /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��ƷͼƬ</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="file" name="p_image" size="30" value="<%=pd.getP_image() %>"/></td>
  </tr>
  
  <tr>
    <td height="94" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="94" align="left">&nbsp;&nbsp;
      <textarea name="p_description" cols="42" rows="5"><%=pd.getP_description() %></textarea></td>
  </tr>
  <tr>
    <td height="40" colspan="2" align="center"><input name="submit" type="submit" class="STYLE1" value=" �޸� " />      &nbsp;&nbsp;
      <input type="button" class="STYLE1" value=" ���� " onclick="history.go(-1);"/></td> 
  </tr>
</table>
</form>
</center>
<%
}
%>