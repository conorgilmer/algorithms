<?php
class MatchesQueue extends SplQueue
{
}

$myQueue = new MatchesQueue();

// add some items to the queue
$myQueue->enqueue('Balbriggan');
$myQueue->enqueue('Curragh');
$myQueue->enqueue('Dublin U');
$myQueue->enqueue('Elm Mount');
$myQueue->enqueue('Kilkenny');

echo "Bottom  = " . $myQueue->bottom() . "\n";
echo "Dequeue = " . $myQueue->dequeue() . "\n";
echo "Bottom  = " . $myQueue->bottom() . "\n";
echo "Top     = " . $myQueue->top() . "\n";




?>
