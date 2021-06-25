# A hash is an unordered collection where the data is organized into "key/value pairs". 
# sounds like dictionaries

produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
puts "There are #{produce['oranges']} oranges in the fridge."

produce.keys
# => ["apples", "oranges", "carrots"]
produce.values
# => [3, 1, 12]

# This syntax is also valid (making use of symbols)
produce = {apples: 3, oranges: 1, carrots: 12}

