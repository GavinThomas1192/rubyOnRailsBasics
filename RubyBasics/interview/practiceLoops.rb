# 1. Write a Ruby method that prints numbers from 1 to 100; except for multiples of three print "Trak", multiples of five print "Star", and multiples of both three and five print "Trakstar".

# while 3 > 1 do
#     puts "Infinite loop"
# end


# start = 1
# stop = 100

# while start < stop do
#     first = start + 1
#     puts start += 1
#     start += 1
# end


# def multiples
#     numbers = Array(1..100)
#     multiples = Array.new
#     for i in numbers
#       if i%3 == 0
#         multiples.push(i)
#       end
#     end
#     multiples
#   end

# puts multiples


# this prints all numbers and trakstar
# def multiples
#     numbers = Array(1..100)
#     for i in numbers
#       if i%3 == 0
#         puts 'Track'
#       end
#       if i%5 == 0 
#         puts 'Star'
#       end
#       if i%3 == 0 and i%5 == 0
#         puts "TrackStar"
#       end
#      puts i
#     end
#   end

# multiples

def trak_star
    arr = []
    (1..100).each do |n|
      if ((n % 3 == 0) && (n % 5 == 0))
        arr << "FizzBuzz"
      elsif (n % 3 == 0)
        arr << "Fizz"
      elsif (n % 5 == 0)
        arr << "Buzz"
      else
        arr << n
      end
    end
    return arr
  end

# puts trak_star


def anagrams(first, second)
    # .gsub(/\s+/, "")
    removedWhitespaceFirst = first.gsub(/[^0-9A-Za-z]/, '').downcase
    removedWhitespaceSecond = second.gsub(/[^0-9A-Za-z]/, '').downcase

    # puts first, second
    # puts 'YOLOOOO'
    # puts removedWhitespaceFirst
    # puts removedWhitespaceSecond

    # if not the same length auto disqualify
    return false if removedWhitespaceFirst.length != removedWhitespaceSecond.length
    

    removedWhitespaceFirst.length.times do |i|
        if (removedWhitespaceFirst[i] != removedWhitespaceSecond[((removedWhitespaceSecond.length - 1) + i )])
          return false
        else
        return true
        end
      end
end

puts anagrams("Owl ", "!l  wo")