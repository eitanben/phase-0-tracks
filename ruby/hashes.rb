#Interior Decorator
#defining the HASh

designer = {
  client_name: "",
  client_phone: nil,
  age: "",
  number_children: nil,
  decor_theme: "",
  repeat_customer: false
}

#capture the 6 pieces of information

puts "Interior Designer - Client Sheet"

puts "What is the client's name ?"
designer[:client_name] = gets.chomp

# phone, change input to integer
puts "What is the client's phone number?"
designer[:client_phone] = gets.chomp.to_i

# Age, change input to integer
puts "Client's age?"
designer[:age] = gets.chomp.to_i

# number of children
puts "Client's number of children:"
designer[:number_children] = gets.chomp

# decor Theme
puts "Decor Theme?"
designer[:decor_theme] = gets.chomp

# repeat customer flag
puts "Repeat Customer - Y/N ?"
designer[:repeat_customer] = gets.chomp

def print_answers(designer)
# Interior Designer - Client Sheet Details
    puts "** Client: #{designer[:client_name]} **"
    puts "** Phone Number: #{designer[:client_phone]} **"
    puts "** Age: #{designer[:age]} **"
    puts "** decor_theme: #{designer[:decor_theme]}"
    puts "** Number of Children: #{designer[:number_children]} **"
    puts "** Repeat Customer: #{designer[:repeat_customer]} **"
end

#In case designer wants to update the client's information
#The assumption is that the user knows the "name" of the field labels
#ask the designer if wants to update a key, if none, exit.
#else, designer needs to enter the key_name.

print_answers(designer)

puts ""
puts "Want to update client's information?"
puts "Enter the Key Name or None to exit:"

update_this_key = gets.chomp

def update(update_this_key, designer)
  puts "Plesase input a new value of #{update_this_key}: "
  designer[update_this_key.to_sym] = gets.chomp
  puts "Now, the updated info is:"
  puts ""
  print_answers(designer)
end

if update_this_key == "none"
    puts "Have a nice day! "
elsif update_this_key == "client_name"
      update(update_this_key, designer)
elsif update_this_key == "client_phone"
    update(update_this_key, designer)
elsif update_this_key == "age"
    update(update_this_key, designer)
elsif update_this_key == "number_children"
    update(update_this_key, designer)
elsif update_this_key == "decor_theme"
    update(update_this_key, designer)
elsif update_this_key == "repeat_customer"
    update(update_this_key, designer)
else
  puts "Sorry, you didn't provide an answer that matches the available options."
end
