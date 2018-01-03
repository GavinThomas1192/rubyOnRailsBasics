hash = {"item" => "bread", quantity: 1, brand: "Daves Killer Bread"}

# lists all values in an array

puts hash.values

# true
puts hash.has_value?("bread")
# false
puts hash.has_value?("item")
# returns values at inputted key
puts hash.values_at("item", :brand)