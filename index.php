<html>
<title> ALB Demo </title>
<body>
<h1>
<center>
<IMG SRC="RoundAnimal.jpg" ALT="RollinWild"><br>
<?php
$eip = file_get_contents('http://169.254.169.254/latest/meta-data/private-ipv4');
echo $eip;
?>
</center>
</h1>
</body>
</html>