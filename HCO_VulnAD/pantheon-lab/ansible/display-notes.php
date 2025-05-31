<?php
header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notes des Dieux</title>
</head>
<body>
    <pre>
<?php
$content = file_get_contents('/var/www/pantheon.god/wordpress/wp-content/notes.txt');
echo htmlspecialchars($content, ENT_QUOTES, 'UTF-8');
?>
    </pre>
</body>
</html> 