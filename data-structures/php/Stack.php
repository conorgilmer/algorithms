<?php
include('CardStack.php');

$myCards = new CardStack();

echo "Stack\n";
$myCards->push('King of Clubs');
$myCards->push('Two of Diamonds');
$myCards->push('Jack of Spades');
$myCards->push('Ace of Spades');
$myCards->push('Four of Hearts');
$myCards->push('Ten of Clubs');
$myCards->push('Seven of Hearts');
$myCards->push('Ace of Hearts');
$myCards->push('Ace of Diamonds');
$myCards->push('Two of Clubs');
$myCards->push('Jack of Clubs');
$myCards->push('Ten of Hearts');
$myCards->push('Ten of Diamonds');
$myCards->push('Four of Clubs');
$myCards->push('Seven of Clubs');
$myCards->push('Nine of Hearts');
$myCards->push('Two of Hearts');
$myCards->push('Four of Spades');
$myCards->push('Two of Spades');
$myCards->push('Nine of Spades');
$myCards->push('Jack of Hearts');
$myCards->push('Nine of Diamonds');
$myCards->push('Ten of Spades');
$myCards->push('Seven of Diamonds');
$myCards->push('Four of Diamonds');
$myCards->push('Seven of Spades');
$myCards->push('Ace of Clubs');
$myCards->push('Jack of Diamonds');
$myCards->push('Nine of Clubs');

echo "Top = ". $myCards->top() ."\n";
echo "Pop = ". $myCards->pop() ."\n";
echo "Top = ". $myCards->top() ."\n";

echo "The End\n";

?>
