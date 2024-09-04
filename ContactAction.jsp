<%@page import="com.Apex.dao.ApexContactDao" %>

<jsp:useBean id="c" class="com.Apex.bin.ApexContactBin"></jsp:useBean>
<jsp:setProperty property="*" name="c"  />

<%  

System.out.println("Hello");
	int status = ApexContactDao.saveContactUs(c);
 
if(status>0)
{

out.println("Submit Success");	
}else{

out.println("Submit Failed");	
	
}
%>

<a href="contact.jsp">Go Back</a>