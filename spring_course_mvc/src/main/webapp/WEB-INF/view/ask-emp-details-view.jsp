<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee" method="post">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br> <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br> <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br> <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
    </form:select>
    <br> <br>

    Which car do you want?
    <br>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--    Toyota <form:radiobutton path="carBrand" value="Toyota"/>--%>
<%--    Honda <form:radiobutton path="carBrand" value="Honda"/>--%>
<%--    Mazda <form:radiobutton path="carBrand" value="Mazda"/>--%>
    <br> <br>
    Foreign Language(s):
    <form:checkboxes path="languages" items="${employee.languageList}"/>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    JP <form:checkbox path="languages" value="Japanese"/>--%>
<%--    CH <form:checkbox path="languages" value="Chinese"/>--%>
    <br> <br>
    Phone Number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br> <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br> <br>

    <input type="submit" value="OK"/>
</form:form>

</body>

</html>





<%--<!DOCTYPE html>--%>
<%--<html>--%>

<%--<body>--%>

<%--<h2>Dear Employee, Please enter your details</h2>--%>

<%--<br>--%>
<%--<br>--%>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>

<%--    <input type="submit"/>--%>

<%--</form>--%>

<%--</body>--%>

<%--</html>--%>
