<%@page import="com.Apex.dao.ApexContactDao" %>

<jsp:useBean id="c" class="com.Apex.bin.ApexSignInBin"></jsp:useBean>
<jsp:setProperty property="*" name="c"  />

<%  
	int status = ApexContactDao.saveSignIn(c);
	
if(status>0)
{
	System.out.println("Sucess");
	response.sendRedirect("apex.jsp");	
}else{
	System.out.println("Failed");
	response.sendRedirect("apex.jsp");	
	
}
%>