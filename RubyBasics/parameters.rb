def add(x, y)
    # this is exactly the same as no return
    return x + y
    # implicit return
    # x + y
end

def subtract(x, y)
    x - y
    # this doesn't work because puts doesn't return anything 
    # puts x - y
end



# This shows nothing because we aren't printing the return
add(1, 1)
# This prints the sum because we puts
puts add(3334343, 222445)
puts subtract(222333232, 4444444)

# we can use return values are arguments
# should return 8
puts add(1, add(3,4))
# should return 11
puts add(subtract(9,5), add(3, 4))



number = 9
puts number
number = subtract(number, 1)
puts number
number = subtract(number, 1)
puts number