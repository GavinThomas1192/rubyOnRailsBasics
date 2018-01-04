def print_hello(number_of_times)
    i = 0
    while i < number_of_times
        puts "Hello"
        i += 1
    end
end

answer = 0
while answer < 5
    print "How many times do you want to print 'hello'? Enter a number greater than 5 to exit. "
    print "---- "
    answer = gets.chomp.to_i
    if answer >= 5
        break
    end
    print_hello(answer)
end    
