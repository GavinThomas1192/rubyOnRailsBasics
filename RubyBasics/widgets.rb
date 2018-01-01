
def ask(question)
    # ask a question, that is a parameter
    print question + " "
    # implicit retun the value of the question after user types
    # https://ruby-doc.org/core-2.2.0/String.html link for chomp
    gets.chomp
end


puts 'Welcome to the widgets store!'
anwser = ask('How many widgets are you ordering?')
puts "You entered #{anwser} widgets!"
puts anwser
# only p returns the whole ruby object
p anwser.class
# above returns "5/n" without chomp, "5" with chomp


# We need to convert the anwser to a number to do math because gets always returns a string.
    
puts "Your total price is #{anwser.to_i * 5} "