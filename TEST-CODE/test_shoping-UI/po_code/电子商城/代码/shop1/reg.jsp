<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<script language="javascript" src="reg.js"></script>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}

.STYLE3 {
	color: #FF0000;
	font-size: 12px;
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

.style66 {
	font-size: 36px;
	font-family: "���ռ��п�";
	color: #000099;
}
-->
</style>

<center>
	<form action="login1?op=check" method="post"
		onsubmit="return check_name(this);">
		<table width="782" border="1" bordercolor="#99CCFF"
			style="border-collapse: collapse" cellpadding="0" cellspacing="0">
			<!--DWLayoutTable-->
			<tr>
				<td height="30" colspan="2" align="center"><span
					class="style66">�û�ע��</span></td>
			</tr>
			<tr>
				<td width="233" height="30" align="right" bgcolor="#99CCFF"><span
					class="STYLE1">�û���</span>��&nbsp;</td>
				<td width="543" align="left" valign="middle" bgcolor="#99CCFF">&nbsp;&nbsp;&nbsp;
					<input type="text" name="c_name" /> <span class="STYLE3">*</span>
					<input type="submit" class="STYLE1" value="����û���" /> <span
					class="STYLE1">����������ֻ������ַ������ȣ�</span> <span class="STYLE3">6-20</span><span
					class="STYLE1">��</span>
				</td>
			</tr>
			<%
	String p=null;
	p=(String)session.getAttribute("p");
	String name=(String)session.getAttribute("c_name");
	if(p==null){
	%>
			<tr>
				<td height="30" colspan="2" align="center"><span class="STYLE3">�����û���</span></td>
			</tr>
			<%
	}else if("yes".equals(p)){
	%>
			<tr>
				<td height="30" colspan="2" align="center"><span class="STYLE3">�û���<%=name %>�Ѵ��ڣ�������ע��һ���µ��û�����
				</span></td>
			</tr>
			<%
	}else if("no".equals(p)){
	%>
			<tr>
				<td height="30" colspan="2" align="center"><span class="STYLE3">��ϲ!<%=name %>
						���û���δ��ʹ��!��ֱ�������±�����ݣ�
				</span></td>
			</tr>
			<%
	}
	%>
		</table>
	</form>
</center>
<form action="login1?op=add&cname=<%=name %>" method="post"
	onsubmit="return check_info(this);">
	<center>
		<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0"
			cellspacing="0" style="border-collapse: collapse">
			<!--DWLayoutTable-->
			<tr>
				<td width="31%" height="30" align="right"><span class="STYLE1">����</span>��&nbsp;</td>
				<td width="69%" height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="password" name="c_pass" /> <span class="STYLE3">*</span><span
					class="STYLE1">����������ֻ�����</span><span class="STYLE3">3-30</span><span
					class="STYLE1">�ַ���</span></td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">ȷ������</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="password" name="c_pass2" /> <span class="STYLE3">*</span></td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">ͷ��ѡ��</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp;<select
					name=reg_userPic size=1
					onChange="document.images['avatar'].src=options[selectedIndex].value;">
						<option value="images/face/Image1.gif">Image1</option>
						<option value="images/face/Image2.gif">Image2</option>
						<option value="images/face/Image3.gif">Image3</option>
						<option value="images/face/Image4.gif">Image4</option>
						<option value="images/face/Image5.gif">Image5</option>
						<option value="images/face/Image6.gif">Image6</option>
						<option value="images/face/Image7.gif">Image7</option>
						<option value="images/face/Image8.gif">Image8</option>
						<option value="images/face/Image9.gif">Image9</option>
						<option value="images/face/Image10.gif">Image10</option>
						<option value="images/face/Image11.gif">Image11</option>
						<option value="images/face/Image12.gif">Image12</option>
						<option value="images/face/Image13.gif">Image13</option>
						<option value="images/face/Image14.gif">Image14</option>
						<option value="images/face/Image15.gif">Image15</option>
						<option value="images/face/Image16.gif">Image16</option>
						<option value="images/face/Image17.gif">Image17</option>
						<option value="images/face/Image18.gif">Image18</option>
						<option value="images/face/Image19.gif">Image19</option>
						<option value="images/face/Image20.gif">Image20</option>
						<option value="images/face/Image21.gif">Image21</option>
						<option value="images/face/Image22.gif">Image22</option>
						<option value="images/face/Image23.gif">Image23</option>
						<option value="images/face/Image24.gif">Image24</option>
						<option value="images/face/Image25.gif">Image25</option>
						<option value="images/face/Image26.gif">Image26</option>
						<option value="images/face/Image27.gif">Image27</option>
						<option value="images/face/Image28.gif">Image28</option>
						<option value="images/face/Image29.gif">Image29</option>
						<option value="images/face/Image30.gif">Image30</option>
						<option value="images/face/Image31.gif">Image31</option>
						<option value="images/face/Image32.gif">Image32</option>
						<option value="images/face/Image33.gif">Image33</option>
						<option value="images/face/Image34.gif">Image34</option>
						<option value="images/face/Image35.gif">Image35</option>
						<option value="images/face/Image36.gif">Image36</option>
						<option value="images/face/Image37.gif">Image37</option>
						<option value="images/face/Image38.gif">Image38</option>
						<option value="images/face/Image39.gif">Image39</option>
						<option value="images/face/Image40.gif">Image40</option>
						<option value="images/face/Image41.gif">Image41</option>
						<option value="images/face/Image42.gif">Image42</option>
						<option value="images/face/Image43.gif">Image43</option>
						<option value="images/face/Image44.gif">Image44</option>
						<option value="images/face/Image45.gif">Image45</option>
						<option value="images/face/Image46.gif">Image46</option>
						<option value="images/face/Image47.gif">Image47</option>
						<option value="images/face/Image48.gif">Image48</option>
						<option value="images/face/Image49.gif">Image49</option>
						<option value="images/face/Image50.gif">Image50</option>
						<option value="images/face/Image51.gif">Image51</option>
						<option value="images/face/Image52.gif">Image52</option>
						<option value="images/face/Image53.gif">Image53</option>
						<option value="images/face/Image54.gif">Image54</option>
						<option value="images/face/Image55.gif">Image55</option>
						<option value="images/face/Image56.gif">Image56</option>
						<option value="images/face/Image57.gif">Image57</option>
						<option value="images/face/Image58.gif">Image58</option>
						<option value="images/face/Image59.gif">Image59</option>
						<option value="images/face/Image60.gif">Image60</option>
				</select> &nbsp;&nbsp;<img src="images/face/Image10.gif" alt=�����������
					name="avatar" width="32" height="32" id=avatar> <span
					class="STYLE3">*</span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">��ϵ�绰</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="text" name="c_phone" /> <span class="STYLE3">*</span> <span
					class="STYLE1">����������д�������պ���ϵ��</span></td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">������ʾ</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <select
					name="c_question">
						<option value="">-��ѡ������������ʾ-</option>
						<option value="����ϲ��������?">����ϲ�������ǣ�</option>
						<option value="����ϲ����һ����Ӱ��?">����ϲ����һ����Ӱ�ǣ�</option>
						<option value="����ϲ���ĸ�����?">����ϲ���ĸ����ǣ�</option>
						<option value="����ϲ����ż����?">����ϲ����ż���ǣ�</option>
						<option value="������Բ�Ļ��Ƿ�����?">������Բ�Ļ��Ƿ�����?</option>
				</select> <span class="STYLE3">*</span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">�����</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="text" name="c_answer" /> <span class="STYLE3">*</span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">���ڵ�ַ</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="text" name="c_address" size="30" /></td>
			</tr>
			<tr>
				<td height="30" align="right"><span class="STYLE1">E_mail</span>��&nbsp;</td>
				<td height="30" align="left">&nbsp;&nbsp;&nbsp; <input
					type="text" name="c_email" size="30" /> <span class="STYLE1"><span
						class="STYLE3">*</span>����</span>�� <span class="STYLE1">(yangfr89@126.com)</span></td>
			</tr>
			<tr>
				<td height="35" colspan="2" align="center"><input type="submit"
					value=" �ύ " />&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
					value=" ���� " onclick="history.go(-1);" /></td>
			</tr>
		</table>
	</center>
</form>



