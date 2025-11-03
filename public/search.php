<?php
require_once('../source/database.php');

$zoekterm = '';
if (isset($_GET['searchquery'])) {
    $zoekterm = $_GET['searchquery'];
}

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zoekresultaten</title>
    <link href="/dist/css/main.min.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
  </head>
  <body>
    <?php include_once "../views/navbar.php"; ?>

    <div class="container my-4">

      <?php
      $query = "SELECT s.*, g.title as genre_type, a.name as artist_name, a.img_artist as img_artist
                FROM single s
                JOIN genre g ON s.genre_id = g.id
                JOIN artist a ON s.artist_id = a.id
                WHERE s.title LIKE ?";

      $stmt = $connection->prepare($query);
      $parameter = '%' . $zoekterm . '%';
      $stmt->bind_param('s', $parameter);
      $stmt->execute();
      $result = $stmt->get_result();

      if ($result && $result->num_rows > 0): ?>
        <div class="singles">
          <?php while ($single = mysqli_fetch_assoc($result)) {
            include '../views/overview.php';
          } ?>
        </div>
      <?php else: ?>
        <p>Geen resultaten gevonden.</p>
      <?php endif; ?>

    </div>

    <?php include_once "../views/footer.php"; ?>
    <script src="/dist/js/main.js"></script>
  </body>
</html>
