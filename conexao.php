<?php

try {
    $conn = new PDO("sqlsrv:server = tcp:mateussantos.database.windows.net,1433; Database = mateussantos;TrustServerCertificate=false", "mateus", "M1a2t3e4u5s6");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}

?>