<?php
$content = "Comme discuté précédemment, Argos m'a fait part que vous aviez tous un mot de passe faible. Prenez ça plus au sérieux et mettez un « y » quand vous l'aurez changé. Argos les reverra avant le début des jeux.

* Zeus : y
* Héra : y
* Poséidon : y
* Déméter : y
* Athéna : y
* Apollon : y
* Artémis : y
* Arès : y
* Aphrodite : y
* Héphaïstos : y
* Hermès : n
* Dionysos : y";

// S'assurer que le contenu est en UTF-8
$content = mb_convert_encoding($content, 'UTF-8', mb_detect_encoding($content));

// Écrire le fichier avec l'encodage UTF-8
file_put_contents('/var/www/pantheon.god/wordpress/wp-content/notes.txt', $content);

// Vérifier l'encodage du fichier créé
$check = file_get_contents('/var/www/pantheon.god/wordpress/wp-content/notes.txt');
echo "Encodage du fichier créé : " . mb_detect_encoding($check, 'UTF-8, ISO-8859-1') . "\n";
?> 