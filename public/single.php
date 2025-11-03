  <?php
  require_once('../source/database.php');

  $single_id = $_GET['single'];

  $query = 
  ' SELECT s.*, g.title as genre_type, a.name as artist_name, a.img_artist as img_artist
  FROM single s
  join genre g
  on s.genre_id = g.id
  join artist a
  on s.artist_id = a.id


    Where s.id=?
  ';

  $stmt = $connection->prepare($query);
  $stmt->bind_param('i', $single_id);

  $stmt->execute();
  

  $result = $stmt->get_result();
  ?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Singles</title>
    <link href="/dist/css/main.min.css" rel="stylesheet"> 
    <link href="/assets/css/style.css" rel="stylesheet">
  </head>
  <body class="body-bg" >

    <?php include_once "../views/navbar.php";
    $single = mysqli_fetch_assoc($result);
    include "../views/overview.php";

    ?>
    
    <div class="container my-5">
      <h1>Singles</h1>
      <div class="col-lg-8 px-0">
        <p class="fs-5">ptio quas necessitatibus ab non exercitationem, quidem repudiandae laboriosam est repellat et! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos, obcaecati architecto, soluta nihil perspiciatis repellat corrupti voluptatum animi aperiam quidem velit qui incidunt in, aut alias sed sunt explicabo itaque! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Distinctio libero atque ullam necessitatibus dolorem repellendus ex, natus est. Nulla minus itaque eum enim sapiente, atque hic temporibus ratione veniam excepturi!</p>
      </div>
    </div>

    <?php include_once "../views/footer.php"; ?>

    <script src="/dist/js/main.js"></script>
  </body>
</html>