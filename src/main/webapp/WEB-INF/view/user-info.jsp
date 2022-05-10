<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>
<h2>User info</h2>
<br>

<form:form action="saveUser" modelAttribute="user">
    
    <form:hidden path="id"/>
    
    FirstName <form:input path="firstName"/>
    <br><br>
    LastName <form:input path="lastName"/>
    <br><br>
    E-mail <form:input path="eMail"/>
    <br><br>
    Age <form:input path="age"/>
    <br><br>
    <input type="submit" value="OK">

</form:form>

</body>

</html>