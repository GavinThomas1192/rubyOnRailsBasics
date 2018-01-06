# Sum of all multiples of 3 or 5 less than 1000, and how you calculated it (use any language or mathematical formula you want

def sum_with_catch
	arr = 0
	(1...1000).each do |n|
		if (n % 3 == 0) || (n % 5 == 0)
			arr += n
		end
	end
	return arr
end

puts sum_with_catch