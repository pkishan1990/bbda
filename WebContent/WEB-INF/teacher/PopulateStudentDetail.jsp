<%@page  contentType="text/xml; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true"%>
<jsp:directive.page language="java"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<Dropdowns>
		<dropdownlist>
			<option value="<c:out value='${studentdetails.fullname}/${studentdetails.totalfees}/${studentdetails.standard}/${Outstanding}/${paidAmount}'/>"></option>			
	</dropdownlist>
</Dropdowns>		
