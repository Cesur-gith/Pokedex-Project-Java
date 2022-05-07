<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>List species</title>
    <link rel="icon" href="https://icons-for-free.com/download-icon-pokemon-131979013310232399_256.ico" />
    <!-- Link BOOTSTRAP (CSS) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <!-- PAGE -->
    <div class="bg-light" style="min-height: 100vh">
        <!-- Contenu Centered -->
        <div class="d-flex flex-column justify-content-center">
            <!-- Container -->
            <div class="container my-4 bg-white rounded shadow-sm">
                <!-- TITRE -->
                <div class="border-bottom p-2 mb-2 d-flex justify-content-between align-items-center">
                    <h2 class="mt-1 fw-bold fst-italic">
                        List Species
                    </h2>
                    <a href="/">
                        <img 
                            width="50"
                            src="https://cdn-icons-png.flaticon.com/512/287/287221.png" 
                            alt=""
                        >  
                    </a>
                </div>

                <ul class="list-group mb-2">
                    <c:forEach items="${species}" var="s">
                        <li class="list-group-item">
                            <div class="text-decoration-none text-reset d-flex justify-content-between align-items-center">
                                <p>${s.label}</p>
                                <div class="mb-2 d-flex">
                                    <form:form method="POST" action="delete-species?id=${s.id}">
                                        <input class="btn btn-outline-danger" type="submit" value="Delete ?">
                                    </form:form>
                                </div>                            
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                
            </div>
        </div>
    </div>
</body>
</html>