<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Pokemon List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:blue;" >

<div class="container">
        <br>
        <div class="card" style="width: 80rem;" >
            <table class="table">
                <thead>
                    <tr>
                       <th> <h1><center>Pokemon List </center><h1></th><br>
                    </tr>
                </thead><br>
                <tbody>

                     <c:forEach items="${pokemonList}" var="pokemon" >

                        <tr>
                            <td>
                                <h2><a href="pokemon?id=${pokemon.id}"><center> Name: ${pokemon.name} /  ID: ${pokemon.id}  <img src="${pokemon.imageUrl}" width="50"/></center></a> <h2><br>
                            </td>

                        </tr>



                    </c:forEach>


                            <form:form>
                                 <input type="button" value="Back" onclick="history.back()">
                             </form:form>
                </tbody>
            </table>

        </div>



    </div>



</body>
</html>
