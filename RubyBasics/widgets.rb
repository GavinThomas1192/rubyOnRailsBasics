
def ask(question)
    # ask a question, that is a parameter
    print question + " "
    # implicit retun the value of the question after user types
    gets
end


puts 'Welcome to the widgets store!'
anwser = ask('How many widgets are you ordering?')
puts "You entered #{anwser} widgets!"
puts anwser
# only p returns the whole ruby object
# p anwser
# above returns "5/n"