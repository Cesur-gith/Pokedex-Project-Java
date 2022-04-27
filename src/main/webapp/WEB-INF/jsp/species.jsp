<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>POKEMON</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="card" style="width: 30rem;">
              <div class="card-header bg-primary text-white">
                    INFO
              </div>
              <ul class="list-group list-group-flush">
                    <li class="list-group-item">Id: ${species.id}</li>
                    <li class="list-group-item">Id: ${species.label}</li>
                    <li class="list-group-item">Id: ${species.description}</li>

                    <li class="list-group-item">Visual: <img src="${pokemon.imageUrl}" width="50"/></li>
                    <a href="/" class="btn btn-secondary">Back</a>
              </ul>
        </div>
    </div>
</body>
</html>