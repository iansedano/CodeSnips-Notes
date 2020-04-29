greeting = "hello Everyone!"

greeting[0..4]

# => "hello"

greeting[6..-2]

# => "Everyone"

greeting.length

# => 15

greeting.split
# => ["hello", "Everyone!"] # This is an array

numbers = "one,two,three,four,five"
numbers.split(",")
# => ["one", "two", "three", "four", "five"]

# greeting.sub  replaces single occurence
# greeting.gsub  replaces all occurences

greeting.gsub("Everyone!", "Friends!")

# Concatenation is by +

# String INTERPOLATION (like f strings in python)

name = "Frank"
puts "Good morning, #{name}!"

modifier = "very "
mood = "excited"
puts "I am #{modifier * 3 + mood} for today's class!"