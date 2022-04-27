<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>POKEMON</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:blue;" >
<br>  <center>
    <div class="container">
        <div class="card" style="width: 50rem;">
                <center>
                <div class="card-header bg-primary text-white">
                    <h1>INFO<h1>
                </div>
                <center>
                <center>
              <ul class="list-group list-group-flush">
                    <li class="list-group-item">Name: ${pokemon.name}</li>
                    <li class="list-group-item">Id: ${pokemon.id}</li><br>
                    <li class="list-group-item">Attack: ${pokemon.attack}</li><br>
                    <li class="list-group-item">Speed: ${pokemon.speed}</li><br>
                    <li class="list-group-item">AttSpeed: ${pokemon.attSpe}</li><br>
                    <li class="list-group-item">DefSpeed: ${pokemon.defSpe}</li><br>
                    <li class="list-group-item">Visual: <img src="${pokemon.imageUrl}" width="50"/></li>
                    <a href="/" class="btn btn-secondary">Back</a>
              </ul>
        </div>
    </div>
              <center>
</body>
</html>