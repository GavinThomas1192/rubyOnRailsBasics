def create_list

    print "What is the list name? "
    # this gets method just capture their input under name. If we dont put print here it will just be a blank line
    name = gets.chomp

    hash = { "name" => name, "items" => Array.new}
    return hash
end

def add_list_item
    print "What is the item called?"
    item_name =  gets.chomp

    print "How Many? "
    quantity = gets.chomp.to_i

    hash = {"name" => item_name, "quantity" => quantity}
    return hash
end

list = create_list()
puts list.inspect

list["items"].push(add_list_item())

puts list.inspect