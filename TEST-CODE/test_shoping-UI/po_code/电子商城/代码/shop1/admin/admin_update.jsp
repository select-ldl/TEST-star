<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*,com.bean.*" %>
 
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
.STYLE2 {font-size:14px;}
.STYLE4 {font-size: 12px; color: #FF0000; }
-->
</style>

<jsp:include page="explain.html" flush="true"/>
<br />
<script>
<!--
	function check_info(form)
	{
		if(form.a_name.value=="")
			{
				alert("����д�����û���!");
				form.a_name.focus();
				return false;
			}
		if(form.a_name.value.length<3 || form.a_name.value.length>30)
		{
			alert("�û����ĳ��ȱ�����3-20֮�䣡");
			form.a_name.focus();
			return false;
		}
		if(form.a_pass.value=="")
		{
			alert("����д��������!");
			form.a_pass.focus();
			return false;
		}
		if(form.a_pass.value.length<3 || form.a_pass.value.length>30)
		{
			alert("����ĳ��ȱ�����3-20֮�䣡");
			form.a_pass.focus();
			return false;
		}
	
		if(form.a_phone.value=="")
		{
			alert("������������ϵ�绰");
			form.a_phone.focus();
			return false;
		}
		if(form.a_phone.value.length>15)
		{
			alert("����ĵ绰���룬��������д���ĵ绰��");
			form.a_phone.focus();
			return false;
		}
		
		if(form.a_email.value.indexOf("@")==-1 ||(form.a_email.value.indexOf(".")==-1))
		{
			alert("�����Email��ʽ������д��ȷ�ĵ�������");
			form.a_email.focus();
			return false;
		}
	}
-->
</script>
<%
Admin ad1=(Admin)session.getAttribute("ad1");
if(ad1!=null){
	String imgA;
	String img=ad1.getA_header();
	if(img.length()==22){
	 imgA="Image"+img.substring(17, 18);
	}
	else{
	  imgA="Image"+img.substring(17, 19);
	}
%>
<form action="login2?op=modify" method="post" onsubmit="return check_info(this);">

<center>
	<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
      <tr>
        <td height="30" colspan="2" align="center" bgcolor="#99CCFF"><span class="STYLE2">�޸Ĺ���Ա����</span></td>
      </tr>
      <tr>
    <td width="24%" height="30" align="right"><span class="STYLE1">����Ա�˺�</span>��&nbsp;</td>
    <td width="76%" height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="a_name" value="<%=ad1.getA_name() %>" > 
      <span class="STYLE4">*</span> <span class="STYLE1">�����ֻ������ַ�[<span class="STYLE4">6-30</span>]��</span>      </tr><tr>
    <td width="24%" height="30" align="right"><span class="STYLE1">����</span>��&nbsp;</td>
    <td width="76%" height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="password" name="a_pass" value="<%=ad1.getA_pass() %>"  />
      <span class="STYLE4">*</span> <span class="STYLE1">�����ֻ������ַ�[<span class="STYLE4">3-30</span>]��</span>      </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">ͷ��ѡ��</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<select name="a_header" size=1 onChange="document.images['avatar'].src=options[selectedIndex].value;">
             <option selected value="<%=ad1.getA_header() %>" ><%=imgA %></option>
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
			<option value="images/face/Image19.gif">Image19 </option>
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
         </select>
		 &nbsp;&nbsp;<img id=avatar src="images/face/Image60.gif" alt=����������� width="32" height="32"> <span class="STYLE4">*</span> </td>
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">��ϵ�绰</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="a_phone" value="<%=ad1.getA_phone() %>" /> 
      <span class="STYLE4">*</span> <span class="STYLE1">����������д�������պ���ϵ��</span></td>
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">E_mail</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="a_email" size="25" value="<%=ad1.getA_email() %>" /> 
      <span class="STYLE4">*</span> <span class="STYLE1">��yangfr89@163.com��</span></td>
  </tr>
  <tr>
    <td height="35" colspan="2" align="center"><input type="submit" class="STYLE1" value=" �ύ " />
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="STYLE1" onclick="history.go(-1);" value=" ���� " /></td>
  </tr>
</table>
</center>

</form>
<%
}else{
	System.out.println("������");
}
%>

