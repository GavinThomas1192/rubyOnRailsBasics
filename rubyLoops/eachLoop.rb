array = [0, 1, 2, 3, 4, 5]
# i = 0

# while i < array.length
#     item = array[i]
#     puts "The current item is #{item}"
#     i += 1
# end

# array.each do |item|
#     puts "The current item is #{item}"
# end

# array.each {|item| puts "The current item is #{item}"}

array.each do |item|
    
    added =  item +2 
    puts "#{item} + 2 = #{added}"
end
puts array.inspect