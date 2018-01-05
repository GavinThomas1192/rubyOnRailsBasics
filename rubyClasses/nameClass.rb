class Name

    # here we run initialize, then assign an instance variable to title as @title so all the methods in the class can use title
    def initialize(title, first_name, middle_name, last_name)
        @title = title
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end

    def title
        @title
    end

    def first_name
        @first_name
    end

    def middle_name
        @middle_name
    end

    def last_name
        @last_name
    end


end

# wont work if not correct number of arguments
name = Name.new("Mr.", "Gavin", "Eugene", "Thomas" )
# this shows where its located in memory only
# puts name


puts name.title + " " + name.first_name + " " + name.middle_name + " " + name.last_name + "."

# puts name.title
# puts name.first_name
# puts name.middle_name
# puts name.last_name
