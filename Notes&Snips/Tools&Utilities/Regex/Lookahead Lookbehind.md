(?:        # Match the following but do not capture it:
 (?!lazy)  # (first assert that it's not possible to match "lazy" here
 .         # then match any character
)*         # end of group, zero or more repetitions.


|Lookaround  |    Name      |        What it Does                       |
-----------------------------------------------------------------------
|(?=foo)     |   Lookahead  | Asserts that what immediately FOLLOWS the |
|            |              |  current position in the string is foo    |
-------------------------------------------------------------------------
|(?<=foo)    |   Lookbehind | Asserts that what immediately PRECEDES the| i,e take out prefix
|            |              |  current position in the string is foo    |
-------------------------------------------------------------------------
|(?!foo)     |   Negative   | Asserts that what immediately FOLLOWS the |
|            |   Lookahead  |  current position in the string is NOT foo|
-------------------------------------------------------------------------
|(?<!foo)    |   Negative   | Asserts that what immediately PRECEDES the|
|            |   Lookbehind |  current position in the string is NOT foo|
-------------------------------------------------------------------------


Lookaround	Name	What it Does
(?=foo)
Lookahead	
Asserts that what immediately follows the current position in the string is foo

(?<=foo)
Lookbehind
Asserts that what immediately precedes the current position in the string is foo

(?!foo)
Negative Lookahead
Asserts that what immediately follows the current position in the string is not foo

(?<!foo)
Negative Lookbehind
Asserts that what immediately precedes the current position in the string is not foo