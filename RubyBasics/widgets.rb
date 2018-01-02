
def ask(question)
    # ask a question, that is a parameter
    print question + " "
    # implicit retun the value of the question after user types
    # https://ruby-doc.org/core-2.2.0/String.html link for chomp
    gets.chomp
end

def price(quantity)
    if quantity >= 100
        price_per_unit = 8
        puts "DISCOUNT!!!!"
    
    elsif quantity >= 50 && quantity <= 99
        price_per_unit = 9
        puts "NO DISCOUNT!!!"
    
    else quantity < 50
        price_per_unit = 10
    end
    quantity * price_per_unit
end


puts 'Welcome to the widgets store!'
anwser = ask('How many widgets are you ordering?')

puts "You entered #{anwser} widgets!"
number = anwser.to_i
total = price(number)
# p anwser.class
# above returns "5/n" without chomp, "5" with chomp


# We need to convert the anwser to a number to do math because gets always returns a string.
    
puts "Your total price is $#{total} "