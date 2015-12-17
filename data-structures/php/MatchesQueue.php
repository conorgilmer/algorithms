<?php
/* Queus using SplQueue */

class MatchesQueue extends SplQueue
{
}

$myQueue = new MatchesQueue();

// add some items to the tail of the queue
$myQueue->enqueue('Balbriggan');
$myQueue->enqueue('Curragh');
$myQueue->enqueue('Dublin U');
$myQueue->enqueue('Elm Mount');
$myQueue->enqueue('Kilkenny');

// print out the queue
echo "\n Contents of Queue is \n";
foreach ($myQueue as $valu) {
	echo $valu . " ";
}
echo "\n";
// print out top bottom and dequeue
echo "Bottom  = " . $myQueue->bottom() . "\n";
echo "Top     = " . $myQueue->top() . "\n";
echo "Dequeue = " . $myQueue->dequeue() . "\n";
echo "Bottom  = " . $myQueue->bottom() . "\n";
echo "Top     = " . $myQueue->top() . "\n";


// print out the queue
echo "\n Contents of Queue is \n";
foreach ($myQueue as $valu) {
	echo $valu . " ";
}
echo "\n";

?>
