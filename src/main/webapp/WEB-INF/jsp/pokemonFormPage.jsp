<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <link rel="icon" href="https://icons-for-free.com/download-icon-pokemon-131979013310232399_256.ico" />
    <title>Form Pokemon</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

    <!-- PAGE -->
    <div class="bg-light" style="min-height: 100vh">
        <!-- Contenu Centered -->
        <div class="d-flex flex-column justify-content-center">
            <!-- Container -->
            <div class="container my-4 bg-white rounded shadow-sm">
                <!-- Title -->
                <div class="border-bottom p-2 mb-2 d-flex justify-content-between align-items-center">
                    <h3>Form Pokemon</h3>
                </div>
                <!-- Form -->
                <form:form modelAttribute="pokemon" method="post" action="add-pokemon">
                    <form:input type="hidden" path="id"></form:input>
                    <div class="form-group">
                        <form:label for="name" path="name">Name:</form:label>
                        <form:input class="form-control" id="name" path="name" type="text"></form:input>
                    </div>
                    <div class="form-group">
                        <form:label for="attack" path="attack">Attack:</form:label>
                        <form:input class="form-control" id="attack" path="attack" type="number"></form:input>
                    </div>
                    <div class="form-group">
                        <form:label for="defense" path="defense">Defense:</form:label>
                        <form:input class="form-control" id="defense" path="defense" type="number"></form:input>
                    </div>
                    <div class="form-group">
                        <form:label for="speed" path="speed">Speed:</form:label>
                        <form:input class="form-control" id="speed" path="speed" type="number"></form:input>
                    </div>
                    <div class="form-group">
                        <form:label for="maxLife" path="maxLife">MaxLife:</form:label>
                        <form:input class="form-control" id="maxLife" path="maxLife" type="number"></form:input>
                    </div>
                    <div class="form-group">
                        <form:label for="imageUrl" path="imageUrl">Image url:</form:label>
                        <form:input class="form-control" id="imageUrl" path="imageUrl" type="string"></form:input>
                    </div>
                    <!-- Select Species -->
                    <div>
                        <form:label path="species">Species:</form:label>
                        <form:select 
                            class="form-select"
                            path="species" 
                            items="${species}" 
                            itemLabel="label" 
                            itemValue="id" 
                        />
                    </div>
                    <!-- Multiple Select Types -->
                    <div>
                        <form:label path="types">Type(s):</form:label>
                        <form:select 
                            class="form-select"
                            multiple="true" 
                            path="types"
                            items="${types}" 
                            itemLabel="label" 
                            itemValue="id" 
                        />
                    </div>
                    <!-- Buttons -->
                    <div class="my-2 border-top d-sm-flex justify-content-center">
                        <a href="/" class="btn btn-secondary m-2 w-100" >Annuler</a>
                        <form:button class="btn btn-success m-2 w-100">Submit</form:button>
                    </div>

                </form:form>

            </div>
        </div>
    </div>

</body>
</html>