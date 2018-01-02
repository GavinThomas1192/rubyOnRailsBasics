# 1. Write a Ruby method that prints numbers from 1 to 100; except for multiples of three print "Trak", multiples of five print "Star", and multiples of both three and five print "Trakstar". 

# 2. Write a Ruby method that determines if two words are anagrams of each other.  I look forward to seeing what you come up with!


# 1. anwser

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

# 2. anwser

def anagrams(first, second)
    # This takes into account certain edge cases Ive picked. 
    # This function will check if two strings are annograms of each other ignoring all whitespace and special characters, to allow comparison of complex sentences if user wishes. 


    removedWhitespaceFirst = first.gsub(/[^0-9A-Za-z]/, '').downcase

    removedWhitespaceSecond = second.gsub(/[^0-9A-Za-z]/, '').downcase

    # if not the same length auto disqualify
    return false if removedWhitespaceFirst.length != removedWhitespaceSecond.length
    
    # Otherwise, if first letter of first string is same as last letter of second string for the length, we can assume its an annogram.
    removedWhitespaceFirst.length.times do |i|
        return false if (removedWhitespaceFirst[i] != removedWhitespaceSecond[((removedWhitespaceSecond.length - 1) - i )])
        
        return true
      end
end

puts anagrams("Owd", "dwo !dd")