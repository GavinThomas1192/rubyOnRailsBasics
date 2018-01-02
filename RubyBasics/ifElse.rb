# if true
#     puts "true"
#     puts "additional code here"
# end
# if false
#     puts "false"
#     puts "additional code here"
# end


# if 75 > 50
#     puts "75 > 50"
# end 
# if 75 > 100
#     puts "75 > 100"
# end
# if 50 == 50
#     puts "50 ==50"
# end


# here unless fires if the condition is false
# so 75 is greater than 50, so the code block DOESNT RUN
# number = 75
# unless number > 50
#     puts "your number is larger than 50"
# end
# unless number > 200
#     puts "your number is larger than 200"
# end
# unless number > 75
#     puts "your number is larger than 75"
# end


# this is just like if, else if, else in JS
# if_condition = false
# elsif_condition = true

# if if_condition
#     puts "true"
# elsif elsif_condition
#     puts " else if is false"
# else
#     puts "false"
# end

def check_speed(speed)
    if speed >= 45 && speed <= 60
      puts "speed OK"
    elsif speed < 45
      puts "too slow"
    elsif speed > 60
      puts "too fast"
    end
  end

check_speed(45)