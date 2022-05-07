<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <link rel="icon" href="https://icons-for-free.com/download-icon-pokemon-131979013310232399_256.ico" />
    <title>Add Type</title>
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
                    <h3>Form Species</h3>
                </div>
                <!-- Form -->
                <form:form modelAttribute="species" method="post" action="add-species">
                    <div class="form-group">
                        <form:label for="label" path="label">Label:</form:label>
                        <form:input class="form-control" id="label" path="label" type="text"></form:input>
                    </div>
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