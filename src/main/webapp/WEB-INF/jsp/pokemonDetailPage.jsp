<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <link rel="icon" href="https://icons-for-free.com/download-icon-pokemon-131979013310232399_256.ico" />
    <title>Details</title>
    <!-- LIEN BOOTSTRAP (CSS) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <!-- PAGE -->
    <div class="bg-light" style="min-height: 100vh">
        <!-- Contenu Centré -->
        <div class="d-flex flex-column justify-content-center">
            <!-- Container -->
            <div class="container my-4 bg-white rounded shadow-sm">
                <!-- TITRE -->
                <div class="border-bottom p-2 mb-2 d-flex justify-content-between align-items-center">
                    <h2 class="mt-1 fw-bold fst-italic">
                        ${pokemon.name}
                    </h2>
                    <a href="/">
                        <img 
                            width="50"
                            src="https://cdn-icons-png.flaticon.com/512/287/287221.png" 
                            alt=""
                        >  
                    </a>
                </div>

                <!-- BTNs -->
                <div class="mb-2 d-flex">
                    <a href="pokemon-form?id=${pokemon.id}" class="btn btn-outline-warning">
                        Edit
                    </a>
                    <form:form method="POST" action="delete-pokemon?id=${pokemon.id}">
                        <input class="btn btn-outline-danger" type="submit" value="Delete ?">
                    </form:form>
                </div>

                <!-- DETAILS -->
                <div class="row mb-2">
                    <!-- IMAGE -->
                    <div class="col-12 col-md-6 d-flex justify-content-center">
                        <img 
                            class="img-fluid"
                            src="${pokemon.imageUrl}" 
                            alt=""
                        >
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="d-md-flex justify-content-around">
                            <!-- CHARACTERISTIC -->
                            <ul class="list-group mb-2">
                                <li class="list-group-item bg-primary text-white">
                                    Name: ${pokemon.name}
                                </li>
                                <li class="list-group-item">
                                    Att: ${pokemon.attack}
                                </li>
                                <li class="list-group-item">
                                    Def: ${pokemon.defense}
                                </li>
                                <li class="list-group-item">
                                    Spd: ${pokemon.speed}
                                </li>
                                <li class="list-group-item">
                                    HP: ${pokemon.maxLife}
                                </li>
                            </ul>
                            <!-- SPECIES -->
                            <ul class="list-group mb-2">
                                <li class="list-group-item bg-primary text-white">
                                    Species
                                </li>
                                <li class="list-group-item">
                                    ${pokemon.species.label}
                                </li>
                            </ul>
                            <!-- TYPES -->
                            <ul class="list-group mb-2">
                                <li class="list-group-item bg-primary text-white">
                                    Types
                                </li>
                                <c:forEach items="${pokemon.types}" var="type">
                                    <li class="list-group-item">
                                        ${type.label}
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>