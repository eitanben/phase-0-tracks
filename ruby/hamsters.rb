#edy ortiz-aragon 

hamster_adoption_candidate = false
hamster_level_volume = false

puts "What is the hamsters Name ?"
hamster_name = gets.chomp

puts "What is the hamsters Volume Level ?"
hamster_volume = gets.chomp
hamster_volume_integer = hamster_volume.to_i

if hamster_volume_integer >= 0 && hamster_volume_integer < 11
   hamster_level_volume = true
end
   
puts "What is the hamsters Fur Color ?"
hamster_furcolor= gets.chomp

puts "Is the hamsters Adoption Candidate y/n ?"
hamster_adoption_flag = gets.chomp

if hamster_adoption_flag == 'y'
   hamster_adoption_candidate = true
end

puts "What is the hamsters Age ?"
hamster_age = gets.chomp

hamster_volume_integer = hamster_volume.to_i
hamster_age_num = hamster_age.to_i

if hamster_age_num =='' 
   hamster_age_num = nil
end

puts "Name of Hamster: #{hamster_name}"
puts "Volume level: #{hamster_volume_integer}" 
puts "Fur Color: #{hamster_furcolor}"

if hamster_adoption_candidate 
   puts "Congratulations, #{hamster_name} is an adoption candidate!" 
else
   puts "um. We'll try to get the hamster adopted: #{hamster_adoption_flag}"
end


if hamster_level_volume
   puts "Congratulations, #{hamster_name} has a good volume level 1-10!" 
else
   puts "um. Hamster may be bigger than we think: #{hamster_volume}"
end
puts "Age: #{hamster_age_num}"

