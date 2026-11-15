<?php
header("Content-Type: text/xml; charset=UTF-8");
include "db.php";

$q = "SELECT * FROM projects";
$result = mysqli_query($conn, $q);

echo "<?xml version='1.0' encoding='UTF-8'?>";
echo "<projects>";

while ($row = mysqli_fetch_assoc($result)) {
    echo "<project>";
    echo "<title>" . htmlspecialchars($row["project_title"]) . "</title>";
    echo "<role>" . htmlspecialchars($row["project_role"]) . "</role>";
    echo "<description>" . htmlspecialchars($row["project_desc"]) . "</description>";
    echo "</project>";
}
echo "</projects>";
?>