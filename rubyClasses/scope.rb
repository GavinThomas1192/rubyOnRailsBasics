class Name
    attr_accessor :title, :first_name, :middle_name, :last_name

    # now we could use this as a instance variable that is accessible anywhere in the class
    # attr_reader :first_and_unique_name


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
    # this makes it so we can call puts name and NOT get the location.
    def to_s
        full_name()
    end
end


name = Name.new("Mr.", "Gavin", "Eugene", "Thomas" )
puts name
# puts name.inspect