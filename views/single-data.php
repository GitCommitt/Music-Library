<?php
$singles = [
    [
        "titel" => "Shake It Off",
        "artiest" => "Taylor Swift",
        "genre" => "Pop",
        "duur" => "3:39",
        "release_datum" => 2014,
        "afbeelding_nummer" => "./img/taylor-nummer.jpg",
        "afbeelding_artiest" => "./img/taylor-artiest.jpg"
    ],
    [
        "titel" => "Call Me Maybe",
        "artiest" => "Carly Rae Jepsen",
        "genre" => "Pop",
        "duur" => "3:13",
        "release_datum" => 2011,
        "afbeelding_nummer" => "./img/carly-nummer.jpg",
        "afbeelding_artiest" => "./img/carly-artiest.jpg"
    ],
    [
        "titel" => "Party in the U.S.A.",
        "artiest" => "Miley Cyrus",
        "genre" => "Pop",
        "duur" => "3:22",
        "release_datum" => 2009,
        "afbeelding_nummer" => "./img/miley-nummer.jpg",
        "afbeelding_artiest" => "./img/miley-artiest.jpg"
    ],
    [
        "titel" => "Teenage Dream",
        "artiest" => "Katy Perry",
        "genre" => "Pop",
        "duur" => "3:47",
        "release_datum" => 2010,
        "afbeelding_nummer" => "./img/katy-nummer.jpg",
        "afbeelding_artiest" => "./img/katy-artiest.jpg"
    ],
    [
        "titel" => "That's What I Like",
        "artiest" => "Bruno Mars",
        "genre" => "Pop",
        "duur" => "3:26",
        "release_datum" => 2017,
        "afbeelding_nummer" => "./img/bruno-nummer.jpg",
        "afbeelding_artiest" => "./img/bruno-artiest.jpg"
    ]
];
    ?>

    <ul class="single_list">
      <?php foreach ($singles as $single): ?>
        <li>
            <li><?= $single['titel'] ?> - 
            <?= $single['artiest'] ?>
            (<?= $single['release_datum'] ?>)
            <li><img class="single-afbeelding_nummer" src="<?= $single['afbeelding_nummer']?>" alt=""></li>
            <li><img class="single-afbeelding_artiest" src="<?= $single['afbeelding_artiest']?>" alt=""></li>
        </li>
      <?php endforeach; ?>
    </ul>