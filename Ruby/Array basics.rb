meals = ["Breakfast", "Lunch", "Dinner"]
# => ["Breakfast", "Lunch", "Dinner"]
meals << "Dessert"
# => ["Breakfast", "Lunch", "Dinner", "Dessert"]
meals[2]
# => "Dinner"
meals.last
# => "Dessert"



one = ["this", "is", "an", "array"]
# => ["this", "is", "an", "array"]
one.index("is")
# => 1
one.include?("an")
# => true
one.join
# => "thisisanarray"
one.first
# => "this"
one.last
# => "array"
one.shuffle
# => ["is", "array", "this", "an"]

one.each{|word| puts "Current item is: #{word}"}

one.collect{|item| item + "-o"}
# => ["this-o", "is-o", "an-o", "array-o"]
