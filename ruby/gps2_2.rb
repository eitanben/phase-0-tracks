#Gps2_2.rb
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Initialize the hash, split the string, load words to hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

DEFAULT_QUANTITY = 0

def create_list(str)
  list = {}
  str.split(' ').each do |item|
    list[item] = DEFAULT_QUANTITY
  end
    p list
end

# Method to add an item to a list
# input: list, item, and quantity
# steps: using the item as key, and quantity of value
# output: update hash

def add_item(list, item, quantity = DEFAULT_QUANTITY)
  list[item] = quantity
  p list
end

# Method to remove an item from the list
# input: list, item
# steps: delete the item, and quantity
# output: updated hash

def remove_item(list, item)
  list.delete(item)
  p list
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps: match the item and update
# output: updated hash

def update_quantity(list, item, value)
  list[item] = value
  p list
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate the list and print key & value
# output: a grocery list

def print_list(list)
  puts " "
  puts "Grocery List"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

#driver code
list = create_list("carrots apples cereal pizza")
add_item(list,"Lemonade", 2)
add_item(list,"Tomatoes", 3)
add_item(list,"Onions")
add_item(list,"Ice Cream", 4)

remove_item(list, 'Tomatoes')

update_quantity(list, 'Ice Cream', 1)

print_list(list)
