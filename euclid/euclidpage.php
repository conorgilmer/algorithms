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
?>

<html>
<head>
    <title>Calculate the Greatest Common Divisor</title>
</head>
<body>
    <H1>Calculate the Greatest Common Divisor</H1>
    <form action="euclidpage.php" method="post">
        Please enter a number (x)  <input type="number" name="numOne"><br>
        Please enter a number (y) <input type="number" name="numTwo"><br>
        <input type="submit">
    </form>
    <?php
    if(isset($_POST["numOne"])) { 
    	if(isset($_POST["numTwo"])) { 
        $x = $_POST["numOne"];
        $y = $_POST["numTwo"];
        echo "You have chosen $x<br>";
        echo "You have chosen $y<br>";
echo "<br>The greatest common divisor of ".$x." and " . $y . " is " . gcd($x,$y);
echo "<br>The greatest common divisor of ".$x." and " . $y . " is " . gcd_one($x,$y);
echo "<br>The greatest common divisor of ".$x." and " . $y . " is " . gcd_two($x,$y);

        } else {
	echo "<br>Enter a number for Y.</br>";}
    } else {
	echo "<br>Enter a number for X.</br>";}
    ?>
</body>
</html>
