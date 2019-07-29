<?php
$dir    = '/mults';
$files = scandir($dir);
echo '<ol>';
foreach ($files as $value)
{
if ($value !='.' and $value !='..' ) 
{echo '<li><a href="'. $value.'">'.$value.'</a></li><br>';}
else{}
}
echo '</ol>';
?>
