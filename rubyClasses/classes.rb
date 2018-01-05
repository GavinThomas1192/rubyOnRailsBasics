class MyClass
    def initialize
        puts "Initialize test sequence!"
    end
end
# string is now an object
# to get all methods call .methods
string = String.new
puts string.methods

puts string.respond_to?("upcase")
# MyClass.new