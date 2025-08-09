<?php

try {
    $conn = new PDO("sqlsrv:server = tcp:{nome do seu servidor}; Database = {nome do seu banco};TrustServerCertificate=false", "{nome do seu usuario}", "{sua senha}");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}


?>
