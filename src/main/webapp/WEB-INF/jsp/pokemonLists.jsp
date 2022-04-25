<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>INFO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="container">
        <div class="card" style="width: 18rem;">
            <table class="table">
                <thead>
                    <tr>
                        <th>Lists</th>
                    </tr>
                </thead>
                <tbody>
                     <c:forEach items="${pokemon}" var="pokemon">
                        <tr>
                            <td>
                                <a href="pokemon?id=${pokemon.id}">${pokemon.name} ${pokemon.id}</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
