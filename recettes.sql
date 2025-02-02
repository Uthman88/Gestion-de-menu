CREATE DATABASE IF NOT EXISTS restaurant;
USE restaurant;

DROP TABLE IF EXISTS recettes;
CREATE TABLE recettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM('Entrée', 'Plat', 'Dessert') NOT NULL,
    image VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);

INSERT INTO recettes (type, image, nom, description, prix) VALUES
-- Entrées
('Entrée', 'chawanmushi1.jpg', 'Chawanmushi', 'Chawanmushi est un flan salé japonais à base d\'œufs, cuit à la vapeur avec du dashi, de la sauce soja et divers ingrédients comme des crevettes, des champignons ou du poulet. Il est servi chaud ou froid dans une tasse.', 3.50),
('Entrée', 'sunomono1.jpg', 'Sunomono', 'Sunomono est une salade japonaise à base de légumes ou de fruits de mer marinés dans du vinaigre de riz sucré. Elle est légère, rafraîchissante et souvent servie en accompagnement.', 3.20),
('Entrée', 'gyoza1.jpg', 'Gyoza', 'Les gyoza sont des raviolis japonais farcis de viande et de légumes, généralement poêlés puis légèrement cuits à la vapeur. Ils ont une texture croustillante en dessous et moelleuse sur le dessus.', 4.80),

-- Plats
('Plat', 'sushi1.jpg', 'Sushi', 'Les sushi sont des bouchées japonaises composées de riz vinaigré accompagné de poisson cru, fruits de mer ou autres garnitures. Ils se présentent sous différentes formes comme nigiri, maki ou sashimi.', 18.00),
('Plat', 'ramen1.jpg', 'Ramen', 'Les ramen sont des nouilles japonaises servies dans un bouillon savoureux, généralement à base de soja, miso ou tonkotsu. Ils sont garnis de viande, d\'œufs, d\'algues et de légumes.', 7.90),
('Plat', 'onigiri1.jpg', 'Onigiri', 'Les onigiri sont des boulettes de riz triangulaires garnies de divers ingrédients comme du saumon, de la prune salée ou du thon-mayonnaise, souvent enveloppées d\'une feuille de nori.', 2.30),

-- Desserts
('Dessert', 'mochi1.jpg', 'Mochi', 'Les mochi sont des pâtisseries japonaises à base de riz gluant, donnant une texture moelleuse et élastique. Ils peuvent être fourrés avec de la pâte de haricots rouges, de la crème ou d\'autres garnitures.', 2.50),
('Dessert', 'kakikori1.jpg', 'Kakigori', 'Le kakigōri est un dessert japonais composé de glace pilée arrosée de sirop sucré, souvent accompagné de lait concentré ou de garnitures comme des fruits ou des haricots rouges. Il est populaire en été.', 5.80),
('Dessert', 'anmitsu1.jpg', 'Anmitsu', 'L\'anmitsu est un dessert japonais traditionnel composé de cubes de gelée d\'agar-agar, de haricots rouges sucrés, de fruits frais, de pâte de mochi et de sirop sucré (mitsu). Il est servi froid, souvent dans un bol.', 4.70);
