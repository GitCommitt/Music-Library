<?php
$request_url = explode('/', $_SERVER['REQUEST_URI']);

$mijn_pagina = end($request_url);

echo 'ik bekijk nu het bericht: ' . $mijn_pagina;


require_once('../source/database.php');
$query = '
SELECT s.*, g.title as genre_type, a.name as artist_name, a.img_artist as img_artist
FROM single s
JOIN genre g ON s.genre_id = g.id
JOIN artist a ON s.artist_id = a.id
';
$stmt = $connection->prepare($query);
$stmt->execute();
$result = $stmt->get_result();
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Singles Overzicht</title>
    <link href="/dist/css/main.min.css" rel="stylesheet"> 
  </head>
  <body>
    <?php include_once "../views/navbar.php";?>
    <div class="container">
      <h1>Singles Overzicht</h1>
      <div class="singles">
        <?php
          while($single = mysqli_fetch_assoc($result)) {
            include "../views/card.php";
          }
        ?>
      </div>
    </div>
    <?php include_once "../views/footer.php"; ?>
    <script src="/dist/js/main.js"></script>
  </body>
</html>
