<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>FORM TYPE</title>
</head>
<body>

   <h3>FORM TYPE</h3>
   <form:form modelAttribute="type" method="type" action="add-type">

        <form:label path="id">ID:</form:label>
        <form:input path="id" type="text"></form:input>
        <br/>

        <form:label path="label">Label:</form:label>
        <form:input path="label" type="text"></form:input>
        <br/>

        <form:label path="description">Description:</form:label>
        <form:input path="description" type="text"></form:input>
        <br/>

         <form:label path="Type">Country:</form:label>
            <form:select path="type">

            <form:option value="Plante"/>
            <form:option value="Insecte"/>
            <form:option value="Eau"/>
            <form:option value="Electric"/>

            </form:select>
        <br/>

        <form:button>Submit</form:button>
   </form:form>

</body>
</html>