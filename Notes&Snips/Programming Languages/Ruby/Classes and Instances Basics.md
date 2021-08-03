```ruby
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
  	7
  end
end

# => :introduction
frank = Student.new
frank.first_name = "Frank"
# => "Frank"
frank.introduction("Katrina")
# Hi Katrina, I'm Frank!
# => nil
puts "Frank's favorite number is #{frank.favorite_number}."

#

class Book
	attr_accessor :title

	def title=(value)
		@title = titleize(value)
	end

	
	def titleize(string)

	prepositions = ["in", "at", "to", "from", "by", "over", "of"]
	conjunctions = ["and"]
	articles = ["the", "a", "an"]

	string = string.capitalize
	array = string.split
	array = array.collect{|word|
		if prepositions.include?(word.downcase) || conjunctions.include?(word.downcase) || articles.include?(word.downcase)
			word
		else
			word.capitalize
		end}
	array.join(" ")
	end

end
```