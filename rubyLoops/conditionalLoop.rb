random_number = Random.new.rand(5)

loop do
    print "Guess the number between 0 and 5 (e to exit): "
    anwser = gets.chomp
    if anwser == 'e'
        puts "The number was #{random_number}."
        break
    elsif anwser.to_i == random_number
        puts "You guessed correctly!"
        break
    else 
        puts "Wrong! Try again"
    end
end