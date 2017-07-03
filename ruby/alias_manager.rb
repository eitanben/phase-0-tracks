#5.6 Solo Challenge - Release 0
#I like to live dangerously and use a global variable.  Only here for testing.
$fakes = {}

def create_alias(real_name)
  # p "The class of real_name started as: #{real_name.class}"
  #split the string into words
  names_arr = real_name.split(' ')
  # p "The class of names_arr after split is: #{names_arr.class}"

  # swap the names, first into last; last into first
  first = names_arr[0]
  last = names_arr[1]
  names_arr[1] = first
  names_arr[0] = last

  # iterate through the array of names
  names_arr.map! do |name|
    name_arr = name.chars
    # iterate through the letter of each name
    name_arr.map! do |letter|
      letter.downcase!
      # def next_vowel(vowel)
      #   p "The vowel is #{vowel}"
      # end
      # def next_consonant(consonant)
      #   p "The consonant is #{consonant}"
      # end
      # test if vowel or consonant
      vowels = "aeiou"
      if vowels.include? letter
        letter_index = vowels.index(letter)
        vowels[letter_index + 1]
      else
        consonants = "bcdfghjklmnpqrstvwxyz"
        letter_index = consonants.index(letter)
        consonants[letter_index+ 1]
      end

    end
    #make the name_arr into a string
    name_str = name_arr.join("")
    # capitalize the name_str
    name_str.capitalize
  end

  # put the names back together as a string
  alias_name = names_arr.join(" ")
  p alias_name
  $fakes[real_name] = alias_name

end
# test the method:
# create_alias("Felicia Torres")
 # => "Vussit Gimodoe"

##5.6 Release 1

finish = false
while finish == false
  puts "What is your real name? Please type first and last names."
  puts "Type 'quit' when you are done"
  real_name = gets.chomp
  if real_name == "quit"
    finish = true
    $fakes.each do |real_name, alias_name|
      puts "#{alias_name} is actually #{real_name}."
    end
    puts "Live long & Prosper!"
  elsif real_name.empty?
    puts "I don't understand, let's try again."
  else
    create_alias(real_name)
  end
end

##5.6 Release 2
