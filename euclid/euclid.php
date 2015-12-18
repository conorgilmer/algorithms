<?php
/* recursive gcd */
function gcd($a, $b) {
  return ($b) ? gcd($b, $a % $b) : $a;
} /* end of gcd */


/* gcd using while */
function gcd_one ($p, $q) {
        while ($q != 0) {
            $temp = $q;
            $q = $p % $q;
            $p = $temp;
        }
        return ($p);
    } /* end of gcd one */


/* gcd using do while */
function gcd_two ($u, $v)
{
        do {
                if ($u < $v)
                {
                        $t = $u;
                        $u = $v;
                        $v = $t;
                }
                $u = $u - $v;
        } while ($u != $v);

return ($u);
} /* end of gcd two */


echo "euclidean algorithm\n";
$x = 145;
$y = 330;
echo "The greatest common divisor of ".$x." and " . $y . " is " . gcd($x,$y);
echo "\nThe greatest common divisor of ".$x." and " . $y . " is " . gcd_one($x,$y);
echo "\nThe greatest common divisor of ".$x." and " . $y . " is " . gcd_two($x,$y);

echo "\n *** The End ***\n";

?>
