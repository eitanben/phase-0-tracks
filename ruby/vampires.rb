 
age_right = false
likes_garlic = nil
waives_insurance = nil
vampire_for_sure = false
valid_input = false

puts "------------------------------------------"
puts "     - Werewolf, Inc, since 2017 -        "
puts "------------------------------------------"
puts " "

#Here we need a loop for the 1st employee, after it prints the results for THAT employee...
#Then, the survey starts again until all employees have been processed

puts "How many employees will be processed today?"
number_of_employees = gets.chomp.to_i
number_processed = 0

while number_processed < number_of_employees

  puts "What is your name ?"
  name = gets.chomp
  puts "Hi, #{name}!" 
  
  if name == ("Drake Cula" || "Tu Fang")
  	vampire_for_sure = true
  end
  
  #--------------Year
  puts "What year were you born?"
  year_born = gets.chomp.to_i
   
  #--------------Age
  age = 2017 - year_born
  puts "Ok, you are: #{age} years old"
  
  if  age  > 120 
    age_right = true
  else
  	age_right = false
  end
  #--------------Garlic Y/N?
  puts "Should we order Garlic bread for you?"
  
  while likes_garlic == nil

	  garlic_bread = gets.chomp
	  
	  if  garlic_bread == "y"
	    likes_garlic = true
	  elsif garlic_bread == "n"
	  	likes_garlic = false
	  else
	  	puts "I didn't understand you, Try again"
	  end
	end
  
  #--------------Insurance Y/N?
  puts "Would you like to enroll in our Health Insurance?"
  while waives_insurance == nil

	  health_insurance = gets.chomp
	  
	  if  health_insurance == "y" 
	      waives_insurance = false
	  elsif health_insurance == "n"
	  	waives_insurance = true
	  else
	  	puts "I didn't understand you, Try again"
	  end
	end
  
  puts "Do you have any allergies? Type 'done' when finished"
  list_of_allergies = []
  allergies_done = false
  while allergies_done == false
  	
	  allergies = gets.chomp
		if allergies == 'sunshine'
			print "Probably a vampire"
	 	 	 allergies_done = true
	 	elsif allergies === 'done'
	 	 	 allergies_done = true
	 	else
	 		list_of_allergies.push(allergies)	
	 	end
	end

#-------------Employee Details Summary
  puts "** Name of Employee: #{name} **"
  puts "** Vampire for sure?: #{vampire_for_sure} **"
  puts "** Born on: #{year_born} **"
  puts "** Age: #{age_right} **"
  puts "** Likes Garlic?: #{likes_garlic} **"
  puts "** Wants Insurance?: #{waives_insurance} **"
  
  #-------------Release 2 - Detection Logic 
  
  if age_right && (likes_garlic || waives_insurance)
  	puts "Probably not a vampire"
  
  elsif !age_right && (!likes_garlic || waives_insurance)
  	puts "Probably a vampire"
  elsif !age_right && (!likes_garlic || !waives_insurance)
  	puts "Almost certainly a vampire"
  elsif vampire_for_sure 
  	puts "Definitely a vampire"
  else
  	puts "Results inconclusive"
  end
  
  number_processed += 1
  age_right = false
	likes_garlic = nil
	waives_insurance = nil
	vampire_for_sure = false
	valid_input = false
end

#-------- The End
#puts "Actually, never mind! What do these questions have to do with anything? Lets all be friends."

