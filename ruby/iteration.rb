#ARRAY .EACH METHOD
language = ["php", "java", "python", "ruby", "C++"]

puts "Before"
p language

language.each do |things_to_learn|
  puts things_to_learn
end

puts "After"
p language

#ARRAY .MAP METHOD
puts "Before"
p language

language.map do |this_language|
  puts "#{this_language} is awesome"
end

puts "After"
p language

#ARRAY .MAP! METHOD
puts "Before"
p language

language.map! do |this_language|
  this_language.upcase
end

puts "After"
p language

#HASH .EACH METHOD
cubs = {
  pitcher: "Arrietta",
  catcher: "Contreras",
  first_base: "Rizzo",
  second_base: "Baez",
  third_base: "Bryant",
  short_stop: "Russell"
}
cubs.each do |position, players|
  puts "#{players}, who plays #{position} is next to bat!"
end

#Release 2, number 1 - Array
numbers = [1, 2, 3, 4, 5, 6]

numbers.delete_if{|e| e < 5}
puts numbers

#Release 2, number 2 - Array
p numbers.select { |n| n < 5 } #=> 1, 2, 3, 4
p numbers #=> 1, 2, 3, 4, 5, 6

#Release 2, number 3 - Array
p number.take_while { |n| n < 3 } #=> 1, 2

#Release 2, number 4 - Array
p number.drop_while {|n| n < 5} #=> 5, 6

cubs = {
  pitcher: "Arrietta",
  catcher: "Contreras",
  first_base: "Rizzo",
  second_base: "Baez",
  third_base: "Bryant",
  short_stop: "Russell"
}

#Release 2, number 1 - Hash
cubs.delete_if {|position, player| position == :short_stop }
#=> :pitcher=>"Arrietta", :catcher=>"Contreras", :first_base=>"Rizzo", :second_base=>"Baez", :third_base=>"Bryant"

#Release 2, number 2 - Hash
cubs.select {|position, player| position == :pitcher }
#=> :pitcher=>"Arrietta"

new_cubs = {
  pitcher: "Lackey",
  second_base: "Happ",
}
p cubs.merge!(new_cubs)
p cubs

#Release 2, number 3 - Hash
p cubs.shift {|position, player| player == "Arrietta" }
p cubs # Returns the Hash "cubs" without pitcher => :catcher=>"Contreras", :first_base=>"Rizzo", :second_base=>"Baez", :third_base=>"Bryant", :short_stop=>"Russell"
