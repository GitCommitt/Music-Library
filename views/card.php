<div class="card-header">
    <h4 class="my-0 font-weight-normal"><?php echo $single['title'] ?></h4>
</div>
<div class="card-artist">
    <h4 class="my-0 font-weight-normal"><?php echo $single['artist_name'] ?></h4>
</div>
<div class="card-release_date">
    <h4 class="my-0 font-weight-normal"><?php echo $single['release_date'] ?></h4>
</div>
<div class="card-duration">
    <h4 class="my-0 font-weight-normal"><?php echo $single['duration'] ?></h4>
</div>
<div class="card-genre">
    <h4 class="my-0 font-weight-normal"><?php echo $single['genre_type'] ?></h4>
</div>
<div class="card-img">
    <img class="card-img-top" src="<?php echo $single['img'] ?>" alt="<?php echo $single['title'] ?>">
</div>
<div class="card-button">
    <a href="/single.php?singleid=<?php echo $single['id'] ?>" type="button" class="btn btn-sm btn-outline-secondary">Bekijk</a>
</div>
