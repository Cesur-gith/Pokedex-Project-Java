<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Type</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:blue;" >
<br>  <center>

<div class="container">
<br>
        <div class="card" style="width: 80rem;" >
            <table class="table">
                <thead>
                    <tr>

                       <th><h1> <center>Pokemon Type</center></h1></th>
                    </tr>
                </thead>
                <tbody>

                     <c:forEach items="${type}" var="type" >
                        <tr>
                            <td>
                                <h3><li class="type?id=${type.id}"> ID: ${type.id} <br>  Description: ${type.description} <h3><br>
                                Label :  ${type.label} &emsp;&emsp; &emsp;&emsp; <img src="${type.imageUrl}" width="50"/> </li>


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
