item = Hash.new
item2 = {}
puts item, item2

item = {"Name" => "Bread"}

puts item
# returns the value associated with the key
puts item["Name"]

item2 = {"Name" => "Bread", "Quantity" => 4}
# Alternative without double quotes
item3 = {Name: "Bread", Quantity: 1}

puts item2
puts item3

item2["Dessert"] = "Ice Cream"
item2["Brand"] = "Daves Killer Bread"
item2[:name] = "Bread"
item2.store("calories", 2000)
puts item2

item2.delete("Dessert")
puts "After delete #{item2}"
