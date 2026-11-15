<?php
header("Content-Type: text/xml; charset=UTF-8");
include "db.php";

$q = "SELECT * FROM skills";
$result = mysqli_query($conn, $q);

echo "<?xml version='1.0' encoding='UTF-8'?>";
echo "<skills>";

while ($row = mysqli_fetch_assoc($result)) {
    echo "<skill>";
    echo "<name>" . htmlspecialchars($row["skill_name"]) . "</name>";
    echo "<category>" . htmlspecialchars($row["skill_category"]) . "</category>";
    echo "<level>" . htmlspecialchars($row["skill_level"]) . "</level>";
    echo "</skill>";
}
echo "</skills>";
?>