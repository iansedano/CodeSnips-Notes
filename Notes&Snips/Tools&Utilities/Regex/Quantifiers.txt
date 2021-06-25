A+

matches

AA
AAA
A

By default, a quantifier tells the engine to match as many instances of its quantified token or subpattern as possible. This behavior is called greedy.

+
once or more

A+
One or more As, as many as possible (greedy), giving up characters if the engine needs to backtrack (docile)

A+?
One or more As, as few as needed to allow the overall pattern to match (lazy)

A++
One or more As, as many as possible (greedy), not giving up characters if the engine tries to backtrack (possessive)

*
zero times or more

A*
Zero or more As, as many as possible (greedy), giving up characters if the engine needs to backtrack (docile)

A*?
Zero or more As, as few as needed to allow the overall pattern to match (lazy)

A*+
Zero or more As, as many as possible (greedy), not giving up characters if the engine tries to backtrack (possessive)

?
zero times or once

A?
Zero or one A, one if possible (greedy), giving up the character if the engine needs to backtrack (docile)

A??
Zero or one A, zero if that still allows the overall pattern to match (lazy)

A?+
Zero or one A, one if possible (greedy), not giving the character if the engine tries to backtrack (possessive)

{x,y}
x times at least, y times at most

A{2,9}
Two to nine As, as many as possible (greedy), giving up characters if the engine needs to backtrack (docile)

A{2,9}?
Two to nine As, as few as needed to allow the overall pattern to match (lazy)

A{2,9}+
Two to nine As, as many as possible (greedy), not giving up characters if the engine tries to backtrack (possessive)

A{2,}
Two or more As, greedy and docile as above.

A{2,}?
Two or more As, lazy as above.

A{2,}+
Two or more As, possessive as above.

A{5}
Exactly five As. Fixed repetition: neither greedy nor lazy.



