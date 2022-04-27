<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8" />
    <title>FORM POKEMON</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body style="background-color:blue;" >
<br>  <center>
    <div class="container">
        <div class="card" style="width: 80rem;">
                <center>
                <div class="card-header bg-primary text-white">
                </div>
                <center>

 <h3>ADD POKEMON</h3>
    <form:form modelAttribute="pokemon" method="post" action="add-pokemon">

         <form:label path="name">Name:</form:label>
         <form:input path="name" type="text"></form:input><br><br>

         <form:label path="attack">Attack:</form:label>
         <form:input path="attack" type="text"></form:input><br><br>

         <form:label path="defense">Defense:</form:label>
         <form:input path="defense" type="text"></form:input><br><br>

         <form:label path="speed">Speed:</form:label>
         <form:input path="speed" type="text"></form:input><br><br>

          <form:label path="attSpe">AttSpe:</form:label>
          <form:input path="attSpe" type="text"></form:input><br><br>

          <form:label path="defSpe">DefSpe:</form:label>
          <form:input path="defSpe" type="text"></form:input><br>

          <p><center>Choose your Species</center></p>
         <form:select path="species"  items="${speciesList}" itemLabel="label" itemValue = "id"  /><br>


          <p><center>Choose your Type</center></p>
           <form:select path="type" items="${typeList}" itemLabel="label" itemValue = "id"   /><br>


            <center>
                <form:button>Submit</form:button> </form:form><br>
              </center>

                <form>

                    <center>
                        <a href="/" class="btn btn-secondary">Back</a>
                    </center>

                 </form>
              </ul>
        </div>
    </div>


</body>
</html>