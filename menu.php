<?php
require 'config.php';

$query = $pdo->query("SELECT type, image, nom, prix FROM recettes ORDER BY FIELD(type, 'Entrée', 'Plat', 'Dessert')");
$menus = [];
while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
    $menus[$row['type']][] = $row;
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Restaurant</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
        }
        img {
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
    <?php foreach (["Entrée", "Plat", "Dessert"] as $type) : ?>
        <?php if (!empty($menus[$type])) : ?>
            <h2><?= $type ?></h2>
            <table>
                <tr>
                    <th>Image</th>
                    <th>Nom</th>
                    <th>Prix</th>
                </tr>
                <?php foreach ($menus[$type] as $item) : ?>
                    <tr>
                        <td><img src="images/<?= htmlspecialchars($item["image"]) ?>" alt="<?= htmlspecialchars($item["nom"]) ?>"></td>
                        <td><?= htmlspecialchars($item["nom"]) ?></td>
                        <td><?= htmlspecialchars($item["prix"]) ?> €</td>
                    </tr>
                <?php endforeach; ?>
            </table>
        <?php endif; ?>
    <?php endforeach; ?>
</body>
</html>
