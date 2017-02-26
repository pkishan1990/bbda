<%@page  contentType="text/xml; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true"%>
<jsp:directive.page language="java"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<Dropdowns>
	<dropdownlist>
	<c:forEach var = "dropdown" items="${Installments}">
		<option value="<c:out value='${dropdown.value[0]}/${dropdown.value[1]}'/>"></option>			
	</c:forEach>
	</dropdownlist>
	<%-- <dropdownlist1>
		<option value="${totalfees}/${Outstanding}/${paidAmount}/${Today}"></option>
	</dropdownlist1> --%>
</Dropdowns>		
