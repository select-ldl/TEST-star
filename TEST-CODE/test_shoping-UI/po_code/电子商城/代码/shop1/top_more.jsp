<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,com.bean.*,java.util.*" %>

<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {
	font-size: 14px;
}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FF0000; }
-->
</style>
<script language="javascript">

function go(c){//�ú���ָ��Ҫ��ת��ҳ��
	  document.mf.cp.value=c;//����ǰҳ�������������
	  document.mf.submit();//�ύ��
}
</script>
<%
ProductPage p=new ProductPage(3,1);//����ÿҳ�����ʾ��¼Ϊ5������ǰĬ��ҳ��Ϊ1
int current=0;
try{
String sel=request.getParameter("cp");
if(sel!=null)
current=Integer.parseInt(sel);
if(current>1)
p.setCurrentPage(current);
}catch(Exception e){
	e.printStackTrace();
}
%>
<table width="256" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="256" height="119"><table width="200" border="0" bordercolor="#99CCFF" style="border-collapse:collapse">

  <tr>
  <%
  String c_name=(String) session.getAttribute("c_name");
    int id=1;
    ResultSet rs=p.getRes(p.getCurrentPage());//��ѯ��ǰҳ�е����м�¼ 
    try{
    while(rs.next()){
%>
    <td width="110" height="135" align="center" valign="middle">
    <img src="<%=rs.getString(6)%>" width="50" /></td>
    <td width="100" align="center"><span class="STYLE5">============</span>
    <p class="STYLE1"><%=rs.getString(3)%></p><p>
    <font size="2" color="red"><%=rs.getString(4)%></font></p>
    <p><a href="#" onClick="window.open('view_product.jsp?p_id=<%=rs.getString(2)%>','help','scrollbars=yes,resizable=yes,width=600,height=520')">
    <input name="see" type="button" class="STYLE1" value="����"></a>
     <%if (c_name!=null && c_name!=""){%>
    <input name="see" type="button" class="STYLE1" onClick="window.location.href='cart_add.jsp?p_id=<%=rs.getString(2)%>'" value="����">
	<%
	}
	%>
	</p></td>
    <%
  	}}catch(Exception e){
  		e.printStackTrace();
  	}
rs.close();
%>
  </tr>
 
</table></td>
  </tr>
</table>
<form action="" method="post"  name="mf" class="STYLE2">
<a href="#" onClick="go(1)" <%=p.getCurrentPage()==1?"disabled":"" %>>��  ҳ</a>&nbsp;
<a href="#" onClick="go(<%=p.getCurrentPage()-1>0?p.getCurrentPage()-1:p.getCurrentPage()%>)"  <%=p.getCurrentPage()==1?"disabled":"" %>>��һҳ</a>&nbsp;
<a href="#" onClick="go(<%=p.getCurrentPage()!=p.getPageSize()?p.getCurrentPage()+1:p.getPageSize()%>)" 
 <%=p.getCurrentPage()==p.getPageSize()?"disabled":"" %>>��һҳ</a>&nbsp;
<a href="#" onClick="go(<%=p.getPageSize()%>)"  <%=p.getCurrentPage()==p.getPageSize()?"disabled":"" %>>β  ҳ</a>&nbsp;
<input type="hidden" name="cp" >
��ת����
<select name="sel" onChange="go(this.value)">
<%
for(int i=1;i<=p.getPageSize();i++){
%>
<option value="<%=i %>"<%=p.getCurrentPage()==i?"selected":"" %>><%=i %></option>
<%
}
%>
 </select>
ҳ&nbsp;&nbsp;
��<%=p.getCurrentPage() %>ҳ/��<%=p.getPageSize()%>ҳ
</form>
</p>
<p>
</p>