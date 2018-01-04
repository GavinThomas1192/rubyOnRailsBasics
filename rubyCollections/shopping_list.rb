def create_list

    print "What is the list name? "
    # this gets method just capture their input under name. If we dont put print here it will just be a blank line
    name = gets.chomp

    hash = { "name" => name, "items" => Array.new}
    return hash
end

def add_list_item
    print "What is the item called? "
    item_name =  gets.chomp

    print "How Many? "
    quantity = gets.chomp.to_i

    hash = {"name" => item_name, "quantity" => quantity}
    return hash
end

def print_seperator(character="-")
    puts character * 80
end

def print_list(list)
    puts "List: #{list['name']}"
    print_seperator()
    puts "\tHere are you items!"

    list["items"].each do |item|
        # the plus at the end needs to be on line one otherwise quanitity doesn't show up
        puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
        end
        print_seperator()
end


list = create_list()
puts "Great, lets add some items to the list"
list["items"].push(add_list_item()) 
list["items"].push(add_list_item())


print_list(list)