<?php
header('Content-Type: text/plain; charset=utf-8');
$content = file_get_contents('/var/www/pantheon.god/wordpress/wp-content/notes.txt');
echo "Encodage détecté : " . mb_detect_encoding($content, 'UTF-8, ISO-8859-1') . "\n\n";
echo "Contenu brut :\n";
echo $content;
?> 