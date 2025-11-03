<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$env_array = parse_ini_file(dirname(__DIR__, 1) . '/.env');

define('DB_HOST', isset($env_array['DB_HOST']) ? $env_array['DB_HOST'] : '127.0.0.1');
define('DB_NAME', isset($env_array['DB_NAME']) ? $env_array['DB_NAME'] : 'm5prog');
define('DB_USERNAME', isset($env_array['DB_USERNAME']) ? $env_array['DB_USERNAME'] : 'm5prog_user');
define('DB_PASSWORD', isset($env_array['DB_PASSWORD']) ? $env_array['DB_PASSWORD'] : 'wachtwoord');

