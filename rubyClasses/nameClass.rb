# class Name
    
#     # here we run initialize, then assign an instance variable to title as @title so all the methods in the class can use title
#     def initialize(title, first_name, middle_name, last_name)
#         @title = title
#         @first_name = first_name
#         @middle_name = middle_name
#         @last_name = last_name
#     end

#     def title
#         @title
#     end

#     def first_name
#         @first_name
#     end

#     def middle_name
#         @middle_name
#     end

#     def last_name
#         @last_name
#     end
# end

class Name
    # allows read access
    attr_reader :title, :first_name, :middle_name, :last_name

    # this allows write access on these variables
    attr_writer :title, :first_name, :middle_name, :last_name

    # this allows both read  AND WRITE
    attr_accessor :title, :first_name, :middle_name, :last_name

    # here we run initialize, then assign an instance variable to title as @title so all the methods in the class can use title
    def initialize(title, first_name, middle_name, last_name)
        @title = title
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end

    def full_name
        @title + " " + @first_name + " " + @middle_name + " " + @last_name
    end

    def last_name
        @last_name
    end
end


name = Name.new("Mr.", "Gavin", "Eugene", "Thomas" )

# puts name.title
# name.title = "Dr."
# puts name.title

puts name.last_name

# puts name.title
# puts name.first_name
# puts name.middle_name
# puts name.last_name
