hash = {"item" => "bread", quantity: 1, brand: "Daves Killer Bread"}


# returns number of key value pairs
print "hash.length: "
puts hash.length

# returns all key value pairs inverted! pure method
print "hash.invert: "
puts hash.invert

# removes the first key value pair mutatiting original hash
print "hash.shift: "
puts hash.shift.inspect
print "hash after shift "
puts hash.inspect

puts hash["item"] = "bread"

# this merges whatever you want, creating a new hash!
# if you merge another hash with same key it will overwrite the old value!
puts "merged with {'calories' => 100}"
newHash = hash.merge({"calories" => 100})
puts newHash