<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Species</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:blue;" >

<div class="container">
        <div class="card" style="width: 40rem;" >
            <table class="table">
                <thead>
                    <tr>
                        <th>Pokemon Species</th>
                    </tr>
                </thead>
                <tbody>

                     <c:forEach items="${type}" var="type" >
                        <tr>
                            <td>
                                <li class="species?id=${species.id}"> ID: ${species.id} <br>  Description: ${species.description} <br>
                                Label :  ${species.label} &emsp;&emsp; &emsp;&emsp; <img src="${species.imageUrl}" width="50"/> </li>


                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
                            <a href="/" class="btn btn-secondary">Back</a>

        </div>
    </div>

</body>
</html>
