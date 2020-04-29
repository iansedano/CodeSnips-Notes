5.times{ puts "Hello, World!"}


5.times do |i|
  puts "#{i}: Hello, World!"
end

# 0: Hello, World!
# 1: Hello, World!
# 2: Hello, World!
# 3: Hello, World!
# 4: Hello, World!
# => 5


"this is a sentence".gsub("e"){ puts "Found an E!"}
# Found an E!
# Found an E!
# Found an E!
# => "this is a sntnc"

"this is a sentence".gsub("e"){|letter| letter.upcase}
# => "this is a sEntEncE"

