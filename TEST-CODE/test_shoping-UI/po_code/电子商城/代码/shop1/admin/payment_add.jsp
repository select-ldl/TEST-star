<%@ page contentType="text/html;charset=gb2312" %>

<%@ page import="java.sql.*" %>

<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
.STYLE2 {font-size: 14px}
-->
</style>
<script>
	<!-- 
		function check_type(form)
		{
			if(form.fangshi_name.value=="")
			{
				alert("��������������");
				form.fangshi_name.focus();
				return false;
			}
		}
	 -->
</script>
			

<center>
<form action="login3?op=add" method="post" onsubmit="return check_type(this);">
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="35" colspan="2" align="center" valign="middle" bgcolor="#99CCFF" class="STYLE2">���֧����ʽ</td>
  </tr>
  <tr>
    <td width="163" height="40" align="right"><span class="STYLE1">֧����ʽ</span>��</td>
    <td width="351" align="left"><input type="text" name="fangshi_name" /></td>
    </tr>
  <tr>
    <td height="76" align="right"><span class="STYLE1">��ע</span>��</td>
    <td align="left"><label>
     <textarea name="fangshi_msg" cols="30" rows="6" ></textarea>
    </label></td>
    </tr>
  <tr>
    <td height="35" colspan="2" align="center"><input type="submit" class="STYLE1" value=" ��� " />&nbsp;<input type="button" class="STYLE1" value=" ���� " onclick="history.go(-1);" /></td>
  </tr>
</table>
</form>
</center>
