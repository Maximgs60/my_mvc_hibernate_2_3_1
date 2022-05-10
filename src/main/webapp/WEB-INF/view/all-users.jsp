<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>All Users</h2>
<br>

<table class="table table-dark", border="3">
    <thead>
        <tr>
            <th>FirstName</th>
            <th>LastName</th>
            <th>E-mail</th>
            <th>Age</th>
            <th>Operations</th>
        </tr>
    </thead>

    <c:forEach var="us" items="${allUs}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="usId" value="${us.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="usId" value="${us.id}"/>
        </c:url>

        <tr>
            <td>${us.firstName}</td>
            <td>${us.lastName}</td>
            <td>${us.eMail}</td>
            <td>${us.age}</td>
            <td>
                <input type="button" value="Update"
                onclick = "window.location.href = '${updateButton}'"/>

                <input type="button" value="Delete"
                onclick = "window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>

<br>
<br>

<input type="button" value="Add new user"
       onclick="window.location.href = 'addNewUser'"/>

</body>

</html>