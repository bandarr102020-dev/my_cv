<?php
header("Content-Type: text/xml; charset=UTF-8");
include "db.php";

$q = "SELECT * FROM personal_info";
$result = mysqli_query($conn, $q);

echo "<?xml version='1.0' encoding='UTF-8'?>";
echo "<infos>";

while ($row = mysqli_fetch_assoc($result)) {
    echo "<info>";
    echo "<name>" . htmlspecialchars($row["full_name"]) . "</name>";
    echo "<student_id>" . htmlspecialchars($row["student_id"]) . "</student_id>";
    echo "<title>" . htmlspecialchars($row["job_title"]) . "</title>";
    echo "<email>" . htmlspecialchars($row["email"]) . "</email>";
    echo "<location>" . htmlspecialchars($row["location"]) . "</location>";
    echo "<bio>" . htmlspecialchars($row["bio"]) . "</bio>";
    echo "</info>";
}
echo "</infos>";
?>