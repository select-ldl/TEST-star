<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Vector"%>
<%@ page import="com.bean.*"%>
<jsp:useBean id="dbc"  class="com.bean.DBConn"  scope="page"/>
<%

	String c_name=(String)session.getAttribute("c_name");
	String c_header=(String)session.getAttribute("c_header");
	String fangshi=request.getParameter("pay_fangshi");//������
	Convert con=new Convert();
	String payment=con.method(fangshi);//��������
	String email=request.getParameter("pay_email");
	String address1=request.getParameter("pay_address");
	String address=con.method(address1);
	//���ɶ�����
	Suijishu sj=new Suijishu();
	String order_id=sj.haoma(10);
	//����ʱ��
	Date time=new Date();
	String order_time=(time.getMonth()+1)+"-"+(time.getDate())+"-"+(time.getYear()+1900);
	if(c_name=="" || c_name==null)
	{
		out.println("<script language='javascript'>alert('���ȵ�¼!');window.location.href='index.jsp';</script>");
	}
	else
	{
		DBConn conn=new DBConn();
		Vector cart=(Vector)session.getAttribute("cart");
		if(cart==null || cart.size()==0)
		{
			response.sendRedirect("cart_null.jsp");
		}
		else
		{
	%>
<html>
<head>
<title>�����̳�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2{
	font-size: 14px;
}
.STYLE9 {color: #FF0000}
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
.STYLE10 {
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
<script language="javascript">
<!--
	function check_pay(form)
	{
		if(form.pay_fangshi.value=="")
		{
			alert("��ѡ�����ĸ��ʽ");
			form.pay_fangshi.focus();
			return false;
		}
		if(form.pay_address.value=="")
		{
			alert("���������ĵ�ַ");
			form.pay_address.focus();
			return false;
		}
		if(form.pay_email.value=="")
		{
			alert("����������Eamil");
			form.pay_email.focus();
			return false;
		}
		if(form.pay_email.value.indexOf("@")==-1 ||(form.pay_email.value.indexOf(".")==-1))
		{
			alert("�����Email��ʽ������д��ȷ�ĵ�������");
			form.pay_email.focus();
			return false;
		}
	}
-->
</script>

</head>
<body>
<jsp:include page="title.jsp" flush="true"/>
<jsp:include page="menu.jsp" flush="true"/>
<center>
<table width="782"  border="1" bordercolor="#99CCFF" cellspacing="0" cellpadding="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
        <tr>
          <td width="183" align="center" valign="top"><jsp:include page="login.jsp" flush="true"/></td>
          <td width="602" valign="top"><table width="100%"  border="0" bordercolor="#99CCFF" style="border-collapse:collapse" cellspacing="0" cellpadding="0">
            <!--DWLayoutTable-->
                      <tr>
                        <td height="14" colspan="5" align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="37" colspan="5" align="center" bgcolor="#eeeeee"><span class="STYLE10">������ϸ��Ϣ</span></td>
                      </tr>
                      <tr>
                        <td width="2%" height="37" align="center">&nbsp;</td>
                        <td height="37" colspan="2" align="center" ><!--DWLayoutEmptyCell-->&nbsp;</td>
                        <td width="43%" align="center">&nbsp;</td>
                        <td width="2%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="2">&nbsp;<span class="STYLE1">�û���</span>��<font size="2"><%=c_name %></td>
                        <td>&nbsp;<span class="STYLE1">������</span>��<font size="2" color="#FF0000"><%=order_id %> (���ס���Ķ�����)</font></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="2">&nbsp;<span class="STYLE1">�����˵�E_mail</span>��<font size="2"><%=email %></font></td>
                        <td>&nbsp;<span class="STYLE1">����ʱ��</span>��<font size="2"><%=order_time %></font></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="3">&nbsp;<span class="STYLE1">�����˵ĵ�ַ</span>��
                        <font size="2"><%=address %></font></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="3">&nbsp;<span class="STYLE1">���ʽ</span>��
                        <font size="2"><%=payment %></font></td>
                        <td>&nbsp;</td>
                      </tr>
					
                      <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="3">&nbsp;<span class="STYLE1">���ע</span>��
                        <font size="2" color="#FF0000">��ע</font></td>
                        <td>&nbsp;</td>
                      </tr>
					 
                      <tr>
                        <td>&nbsp;</td>
                        <td colspan="3">&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td colspan="3"><hr size="1" color="#99CCFF" width="560"></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td colspan="5">
<form method="post" action="cart_modify.jsp" name="form1">
<table width="95%" height="83" border="0" bordercolor="#99CCFF" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <tr align="center" valign="middle">
        <td height="27" class="STYLE1">���</td>
        <td height="27" class="STYLE1">��Ʒ���</td>
        <td class="STYLE1">��Ʒ����</td>
        <td height="27" class="STYLE1">����</td>
        <td height="27" class="STYLE1">����</td>
        <td width="86" height="27" class="STYLE1">���</td>
        </tr> 
	<%
	    float sum=0;
		String p_id="";
		String goodsname="";
		for(int i=0;i<cart.size();i++){
			CartBean goodsitem=(CartBean)cart.elementAt(i);
			sum=sum+goodsitem.p_number*goodsitem.p_price;
			p_id=goodsitem.p_id;
			ResultSet rs_goods=conn.query("select * from Product where p_id='"+p_id+"'");
			if (rs_goods.next())
			{
				goodsname=rs_goods.getString("p_name");
				
			}
	%> 
      <tr align="center" valign="middle"> 
        <td width="39" height="27"><font size="2"><%=i+1%></font></td>
        <td width="110" height="27"><font size="2"><%=p_id%></font></td> 
        <td width="197" height="27"><font size="2"><%=goodsname%></font></td>
        <td width="79" height="27"><font size="2">��<%=goodsitem.p_price%></font></td> 
        <td width="52" height="27" class="STYLE1"><%=goodsitem.p_number%></td> 
        <td height="27"><font size="2">��<%=(goodsitem.p_price*goodsitem.p_number)%></font></td> 
        <script language="javascript">
			<!--
			function check(myform){
				if(isNaN(myform.num1.value) || myform.num1.value.indexOf('.',0)!=-1){
					alert("�벻Ҫ����Ƿ��ַ�");myform.num1.focus();return;}
				if(myform.num1.value==""){
					alert("�������޸ĵ�����");myform.num1.focus();return;}	
				myform.submit();
			}
			-->
		</script>
		<%
		//������Ϣ��ӵ�orderdetails����
		float price=goodsitem.p_price;
		int num=goodsitem.p_number;
		String sql="insert into orderdetails values('"+order_id+"','"+p_id+"',"+price+","+num+")";
		int k=0;
		k=dbc.add(sql);
		if(k!=0){
			System.out.println("��ӳɹ�");
		}else{
			System.out.println("���ʧ��");
		}
	}
	%>
		
	</tr>
      </table>
	  </form>
<table width="100%" height="83" border="0" bordercolor="#99CCFF" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <tr align="center" valign="middle">
        <td height="10" colspan="3"><hr size="1" color="#99CCFF" width="560"></td>
        </tr>
      <tr align="center" valign="middle">
		<td width="40%" height="10">&nbsp;</td>
        <td width="32%">&nbsp;</td>
        <td width="28%" height="10" colspan="-3" align="left"><span class="STYLE1">�ϼ��ܽ��</span>
        <font size="2"><font size="2">��</font></font>
        <span class="STYLE9">��<%=sum %></span></td>
		</tr>
      <tr align="center" valign="middle">
        <td height="26">&nbsp;</td>
        <td>&nbsp;</td>
        <td height="26" colspan="-3" align="left">&nbsp;</td>
      </tr>
      <tr align="center" valign="middle">
        <td height="29" colspan="3"><input name="button" type="button" class="STYLE1" onClick="window.location.href='payment1.jsp'" value=" ȷ������ "/>          &nbsp;&nbsp;
          <input type="button" class="STYLE1" value=" ȡ������ " onClick="history.go(-1);"/></td></tr>
</table></td>
                      </tr>
                      
                      <tr>
                        <td height="30" colspan="5" align="center" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      </tr>
          </table>          </td>
        </tr>
      </table>
</td>
  </tr>
</table>
</td>
</tr>
</table>
</center>
<br>
<jsp:include page="copyright.jsp" flush="true"/>
</body>
</html>
<%
session.setAttribute("order_id",order_id);
session.setAttribute("order_payment",payment);
session.setAttribute("order_address",address);
session.setAttribute("order_email",email);
session.setAttribute("order_time",String.valueOf(order_time));
session.setAttribute("order_sum",String.valueOf(sum));
conn.closeDB();}
}%>