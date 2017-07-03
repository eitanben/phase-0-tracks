# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
puts "Answer 1 (Arrays):"
puts ""
zombie_apocalypse_supplies.each do |item|
  print "#{item}*"
end

puts ""
#this is the same as:
# puts "Answer 1b:"
# zombie_apocalypse_supplies.each do |item|
#   print item.concat("*")
# end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
puts "Answer 2 (Arrays):"
# we can't use this for this exercise: zombie_apocalypse_supplies.sort!
def sort_arr (arr)
  new_arr = arr.dup
  arr.each_index do |item|
    if arr[item + 1] != nil
      if arr[item] > arr[item + 1]
        temp = arr[item + 1]
        arr[item + 1] = arr[item]
        arr[item] = temp
      end
    end
  end
  if arr == new_arr
    print arr
  else
    sort_arr(arr)
  end

end
sort_arr(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
puts ""
puts "Answer 3 (Arrays):"

def search_item(search_term, arr)
  arr.each do |arr_item|
    if arr_item == search_term
      puts "Yes we have #{search_term}!"
      return
    end
  end
  puts "Sorry we don't have the #{search_term}"
end
# test:
search_item("compass", zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
puts ""
puts "Answer 4 (Arrays):"

def reduce_supplies(arr)
  another_arr = []
  arr.each do |item|
    if another_arr.length < 5
      another_arr.push(item)
    end
  end
  print another_arr
end
reduce_supplies(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
puts ""
puts "Answer 5 (Arrays):"

def combine_supplies(arr1, arr2)
  combined = arr1.concat(arr2)
  uniques = combined.uniq
  print uniques
end
combine_supplies(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
puts ""
puts "Answer 1 (Hashes):"
extinct_animals.each do |animal, year|
  print "The #{animal} - #{year}. *"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
puts ""
puts "Answer 2 (Hashes):"

def reduce_animals(hash)
  another_hash = {}
  hash.each do |k,val|
    if val < 2000
      another_hash[k] = val
    end
  end
  print another_hash
end
reduce_animals(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
puts ""
puts "Answer 3 (Hashes):"

def update_vals(hash)
  hash.each do |k,val|
    hash[k] = val - 3
  end
  print hash
end
update_vals(extinct_animals)

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
puts ""
puts "Answer 4 (Hashes):"
def check_extinct(hash, animal)
  hash.each do |k,val|
    if animal == k
      puts "Yes the #{animal} is extinct."
      return
    end
  end
  puts "The #{animal} is NOT extinct."
end
check_extinct(extinct_animals, "Andean Cat")
check_extinct(extinct_animals, "Dodo")
check_extinct(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
puts ""
puts "Answer 5 (Hashes):"
def remove(hash, animal)
  two_item_array = []
  two_item_array.push(animal)
  year = hash[animal]
  two_item_array.push(year)
  hash.delete_if {|k, v| k == animal }
  puts hash
  print two_item_array
end
remove(extinct_animals, "Passenger Pigeon")
