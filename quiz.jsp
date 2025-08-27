<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navSection.jsp" />

<div id="mainDivQuiz">
<div id="progressBar"></div>
<div id="quizContainer">
<p id="question">No Data some thing cool</p>
<input name="ans" id="opn1" type="radio"></input><label id="lb1"></label><br>
<input name="ans" id="opn2" type="radio"></input><label id="lb2"></label><br>
<input name="ans" id="opn3" type="radio"></input><label id="lb3"></label><br>
<input name="ans" id="opn4" type="radio"></input><label id="lb4"></label><br>
<p id="error">click next to move another question</p>
</div>
<div id="buttonDiv"><button id="btn" onclick="getNext()">next</button></div>
</div>
<form id="getResult" method="post" action="${pageContext.request.contextPath}/result.jsp">
<input type="hidden" name='total' id='totalF'>
<input type="hidden" name='correct' id='correctF'>
</form>
</body>
</html>