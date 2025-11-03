<div class="single_item">
  <div class="single_images">
    <img src="<?php echo $single['img'] ?>" alt="<?php echo $single['title'] ?>">
  </div>
  <h4 class="single_title"><?php echo $single['title'] ?></h4>
  <p class="single_artist"><?php echo $single['artist_name'] ?></p>
  <p class="single_release_date"><?php echo $single['release_date'] ?></p>
  <p class="single_duration"><?php echo $single['duration'] ?></p>
  <p class="single_genre"><?php echo $single['genre_type'] ?></p>
  <div class="card-button">
    <a href="/single/<?php echo $single['slug'] ?>" type="button" class="btn btn-sm btn-outline-secondary">Bekijk</a>
  </div>
</div>
