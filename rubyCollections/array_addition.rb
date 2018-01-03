grocery_list = ["Milk", "Eggs", "Bread"]

grocery_list << "Carrots"

grocery_list.push("Potatoes")
# PUTS VALUE IN FRONT
grocery_list.unshift("Ice Cream")

# This doesn't work unless its in an array
grocery_list += ["Ice Cream", "Pie"]



puts grocery_list

# puts grocery_list.last

# puts "Count! #{grocery_list.count}"
# puts "Length! #{grocery_list.length}"

# puts grocery_list.include?("eggs")
# puts grocery_list.count("Ice Cream")

last_item = grocery_list.pop
puts "Last Item #{last_item}"

puts "after pop #{grocery_list}"
# First item in array
puts "Shift #{grocery_list.shift}"

# this captures the last two values from the array BUT DOES NOT REMOVE THEM
drop_two_items = grocery_list.drop(2)
# original array unmodified
first_three_items = grocery_list.slice(0, 3)