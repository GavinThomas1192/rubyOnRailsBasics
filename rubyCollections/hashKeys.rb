hash = {"item" => "bread", quantity: 1, brand: "Daves Killer Bread"}


puts hash
# Returns all keys within the hash
puts hash.keys
# if your hash is using special keys like above use this to lookup
puts hash.has_key?(:brand)
# this works because above we are using double quotes
puts hash.has_key?("item")
# this returns false because case sensitive
puts hash.has_key?("Item")

# Shorthand
puts hash.key?("item")
puts hash.member?("item")

# returns value from key, case sensitive
puts hash.fetch("item")
puts hash["item"]
puts hash[:quantity]

hash.store("calories", 39999)
puts hash