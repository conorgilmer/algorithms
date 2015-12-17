<?php
function gcd($a, $b) {
  return ($b) ? gcd($b, $a % $b) : $a;
} 

echo "euclidean algorithm\n";
$x = 145;
$y = 330;
echo "The greatest common divisor of ".$x." and " . $y . " is " . gcd($x,$y);

echo "\n *** The End ***\n";

?>
