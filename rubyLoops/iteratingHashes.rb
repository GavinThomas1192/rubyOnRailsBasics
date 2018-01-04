business = {"name" => "Treehouse", "location" => "Portland, OR"}

# business.each do |key, value|
#     puts "This is key = #{key}"
#     puts "This is value = #{value}"
# end


# This does the same thing
# business.each_pair do |key, value|
#     puts "This is key = #{key}"
#     puts "This is value = #{value}"
# end

business.each_key do |key|
    puts key 
end

business.each_value do |value|
    puts value 
end