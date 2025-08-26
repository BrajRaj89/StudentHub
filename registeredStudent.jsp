<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="navSection.jsp" /> 
<div id="headDiv">
<h1>Available Students</h1>
<c:if test="${studentExists==true}">
<c:set var="size" value="${fn:length(sessionScope.studentsList)}" />
<h5>Total is ${size}</h5>
</c:if>
</div>
<div id="mainDiv">
<c:if test="${studentExists==false}">
<h5>No Record Found</h5>
</c:if>
<c:if test="${studentExists==true}">
<c:forEach var="student" items="${sessionScope.studentsList}">
<div id="dataDiv">
<span id="nameSpan">${student.name}</span><br>
<span id="studentIdSpan"><i class="fa-solid fa-id-card"></i>&nbsp;&nbsp;${student.id}</span><br>
<span id="dob"><i class="fa-solid fa-calendar"></i>&nbsp;&nbsp;${student.dob}</span><br>
<span id="emailSpan"><i class="fa-solid fa-envelope"></i>&nbsp;&nbsp;${student.email}</span><br>
<span id="collegeSpan"><i class="fa-solid fa-building-columns"></i>&nbsp;&nbsp;${student.college}</span><br>
<span id="contactSpan"><i class="fa-solid fa-phone"></i>&nbsp;&nbsp;${student.contact}</span><br>
<span id="addressSpan"><i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;${student.address}</span><br>
</div>
</c:forEach>
</c:if>
</div>
</body>
</html>
