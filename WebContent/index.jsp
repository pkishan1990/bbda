<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var='statusCheck' value='<%=request.getParameter("statusCheck") %>'></c:set>

<c:redirect url="/NewLogin.htm"> </c:redirect>

