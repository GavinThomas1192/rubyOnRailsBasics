# To run this program
# * Install ruby
# * navigate to directly this file lives
# * ruby app_question.rb

# Sum of all multiples of 3 or 5 less than 1000, and how you calculated it (use any language or mathematical formula you want

def sum_with_catch
	# placeholder to start running total
	total = 0
	# create array for each item that is multiples of 3 or 5, add to total
	(1...1000).each do |n|
		if (n % 3 == 0) || (n % 5 == 0)
			total += n
		end
	end
	# return total
	return total
end
# print total to show
puts sum_with_catch