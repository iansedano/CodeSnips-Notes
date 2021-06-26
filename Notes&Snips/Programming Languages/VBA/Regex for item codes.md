Regex expression to find item codes

bascially 5 digits and whatever comes after it
/\d{5}.*/g

to find perfect matches of item code
/[A-z]{3}-[A-z]{3}-[A-z]{3}-\d{5}-[0-z]{2}$/gm