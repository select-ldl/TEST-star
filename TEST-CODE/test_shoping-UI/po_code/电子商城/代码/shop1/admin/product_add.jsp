<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>


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
<center>
<form action="login6?op=add" method="post" onSubmit="return check_product(this);">
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="30" colspan="2" align="center" bgcolor="#99CCFF"><span class="STYLE2">�����Ʒ</span></td>
    </tr>
  <tr>
    <td width="146" height=40 align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td width="348" align="left">&nbsp;&nbsp;
      <select name="p_type">
	  <option value="">-��Ʒ����-</option>
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
      <input type="text" name="p_id" size="15"  /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_name" size="30" /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ�۸�( RMB )</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_price" size="10" /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="text" name="p_quantity" size="10"  /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��ƷͼƬ</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;
      <input type="file" name="p_image" size="30" /></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="STYLE1">��������</span>��</td>
    <td height="30" align="left">&nbsp;&nbsp;<input type="text" name="p_time"  /> 
      <span class="STYLE5">*</span> <span class="STYLE1">�����磺6-23-2014��</span></td>
  </tr>
  <tr>
    <td height="94" align="center"><span class="STYLE1">��Ʒ����</span>��</td>
    <td height="94" align="left">&nbsp;&nbsp;
      <textarea name="p_description" cols="42" rows="5"></textarea></td>
  </tr>
  <tr>
    <td height="40" colspan="2" align="center"><input name="submit" type="submit" class="STYLE1" value=" ��� " />      &nbsp;&nbsp;
      <input type="reset" class="STYLE1" value=" ���� " /></td>
  </tr>
</table>
</form>
</center>