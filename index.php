<?php
    include "conexao.php";
    
    $sql = "SELECT nome, endereco, cidade, telefone FROM Clientes";
    $stmt = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Clientes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #555;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
    <h1>Lista de Clientes</h1>

    <table>
        <tr>
            <th>Nome</th>
            <th>Endereço</th>
            <th>Cidade</th>
            <th>Telefone</th>
        </tr>
        <?php while ($row = $stmt->fetch(PDO::FETCH_ASSOC)): ?>
            <tr>
                <td><?php echo $row['nome']; ?></td>
                <td><?php echo $row['endereco']; ?></td>
                <td><?php echo $row['cidade']; ?></td>
                <td><?php echo $row['telefone']; ?></td>
            </tr>
        <?php endwhile; ?>
    </table>
</body>

</html>

