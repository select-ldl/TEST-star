<%@ page contentType="text/html;charset=gb2312"%>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}

.STYLE2 {
	font-size: 14px;
	color: #333333;
}

.STYLE4 {
	font-size: 24px;
	color: #FF0000;
	font-family: "���ռ��п�";
}
-->
</style>

<script>
<!--
	function check_admin(form) {
		if (form.a_name.value == "") {
			alert("���������Ա�˺�!");
			form.a_name.focus();
			return false;
		}
		if (form.a_pass.value == "") {
			alert("���������Ա����!");
			form.a_pass.focus();
			return false;
		}
	}
	-->
</script>

<center>
	<table width="233" border="1" bordercolor="#99CCFF"
		style="border-collapse: collapse" cellpadding="0" cellspacing="0">
		<!--DWLayoutTable-->
		<tr>
			<td width="233" height="30" bgcolor="#99CCFF">&nbsp;</td>
		</tr>
		<tr>
			<td height="51">
			<form action="login2?op=login" method="post" onSubmit="return check_admin(this);">
					<table width="409" border="0" bordercolor="#99CCFF" cellpadding="0"
						cellspacing="0" style="border-collapse: collapse">
						<!--DWLayoutTable-->
						<tr>
							<td height="40" colspan="2" align="center" bgcolor="#eeeeee"><span
								class="STYLE4">�����̳�ϵͳ ���� ��̨��¼</span></td>
						</tr>
						<tr>
							<td width="146" height="30" align="right"><span
								class="STYLE2">�ʺ�</span>��</td>
							<td width="263" align="left" valign="middle">&nbsp;<input
								type="text" name="a_name" size="20" /></td>
						</tr>
						<tr>
							<td width="146" height="30" align="right"><span
								class="STYLE2">����</span>��</td>
							<td height="30" align="left" valign="middle">&nbsp;<input
								type="password" name="a_pass" size="21" /></td>
						</tr>
						<tr>
							<td height="30" align="right">&nbsp;</td>
							<td height="30" align="center"><div align="left">
									<input name="submit2" type="submit" class="STYLE1"
										value=" �� ¼ " /> &nbsp; <input name="reset" type="reset"
										class="STYLE1" value=" ȡ �� " />
								</div></td>
						</tr>
					</table>
				</form></td>
		</tr>
	</table>
</center>

