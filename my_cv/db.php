<?php
$conn = mysqli_connect("localhost", "root", "", "cv_db");
mysqli_set_charset($conn, "utf8mb4");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>