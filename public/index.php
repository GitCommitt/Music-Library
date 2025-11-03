<?php
require_once('../source/database.php');

$path = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');
$parts = $path === '' ? [] : explode('/', $path);

if (empty($parts)) {
  $query = '
  SELECT s.*, g.title as genre_type, a.name as artist_name, a.img_artist as img_artist
  FROM single s
  JOIN genre g ON s.genre_id = g.id
  JOIN artist a ON s.artist_id = a.id
  ';
  $stmt = $connection->prepare($query);
  $stmt->execute();
  $result = $stmt->get_result();
  $view = 'overview';
} elseif ($parts[0] === 'single' && isset($parts[1]) && $parts[1] !== '') {
  $mijn_pagina = $parts[1];
  $query = '
  SELECT s.*, g.title as genre_type, a.name as artist_name, a.img_artist as img_artist
  FROM single s
  JOIN genre g ON s.genre_id = g.id
  JOIN artist a ON s.artist_id = a.id
  WHERE s.slug = ?
  LIMIT 1
  ';
  $stmt = $connection->prepare($query);
  $stmt->bind_param('s', $mijn_pagina);
  $stmt->execute();
  $result = $stmt->get_result();
  $single = $result->fetch_assoc();

  $view = 'single';
} else {
  header('Location: /');
  exit;
}
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Singles Overzicht</title>
    <link href="/dist/css/main.min.css" rel="stylesheet"> 
    <link href="/assets/css/style.css" rel="stylesheet">
  </head>
  <body>
    <?php include_once "../views/navbar.php";?>
    <div class="container">
      <?php if ($view === 'overview'): ?>
        <h1>Singles Overzicht</h1>
        <div class="singles">
          <?php
            while($single = mysqli_fetch_assoc($result)) {
              include "../views/overview.php";
            }
          ?>
        </div>
      <?php else: ?>
        <h1>Single Details</h1>
        <?php include "../views/single.php"; ?>
      <?php endif; ?>
    </div>
    <?php include_once "../views/footer.php"; ?>
    <script src="/dist/js/main.js"></script>
  </body>
</html>
