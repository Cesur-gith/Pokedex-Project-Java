<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>FORM SPECIES</title>
</head>
<body>

   <h3>FORM SPECIES</h3>
   <form:form modelAttribute="species" method="species" action="add-species">

        <form:label path="id">ID:</form:label>
        <form:input path="id" type="text"></form:input>
        <br/>

        <form:label path="label">Label:</form:label>
        <form:input path="label" type="text"></form:input>
        <br/>

        <form:label path="description">Description:</form:label>
        <form:input path="description" type="text"></form:input>
        <br/>

            <form:option value="Carapace"/>
            <form:option value="Graine"/>
            <form:option value="Flamme"/>
            <form:option value="Minitortue"/>
            <form:option value="Souris"/>
        </form:select>
        <br/>

        <form:button>Submit</form:button>
   </form:form>

</body>
</html>