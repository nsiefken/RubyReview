def print_num(number)
	 if number.to_s.length == 2
	 	if 	number == 10
			print "ten"
		elsif number == 11
			print "eleven"
		elsif number == 12
			print "twelve"
		elsif number == 13
			print "thirteen"
		elsif number == 15
			print "fifteen"	
		elsif number.to_s.start_with?("1")
			if number.to_s.end_with?("4")
				print "four"
			elsif number.to_s.end_with?("6")
				print "six"
			elsif number.to_s.end_with?("7")
				print "seven"
			elsif number.to_s.end_with?("8")
				print "eight"
			elsif number.to_s.end_with?("9")
				print "nine"	
			end	
			print "teen"
		elsif number.to_s.start_with?("2")
			print "twenty "
			second_digit(number)	
		elsif number.to_s.start_with?("3")
			print "thirty "
			second_digit(number)	
		elsif number.to_s.start_with?("4")
			print "fourty "
			second_digit(number)
		elsif number.to_s.start_with?("5")
			print "fifty "
			second_digit(number)	
		elsif number.to_s.start_with?("6")
			print "sixty "
			second_digit(number)	
		elsif number.to_s.start_with?("7")
			print "seventy "
			second_digit(number)	
		elsif number.to_s.start_with?("8")
			print "eighty "
			second_digit(number)	
		elsif number.to_s.start_with?("9")	
			print "ninety "
			second_digit(number)	
		end	
	else number.to_s.length == 1
		second_digit(number)	
	end		
end
def second_digit(number)
	if number.to_s.end_with?("1")
		print "one"
	elsif number.to_s.end_with?("2")
		print "two"	
	elsif number.to_s.end_with?("3")
		print "three"
	elsif number.to_s.end_with?("4")
		print "four"
	elsif number.to_s.end_with?("5")
		print "five"
	elsif number.to_s.end_with?("6")
		print "six"
	elsif number.to_s.end_with?("7")
		print "seven"
	elsif number.to_s.end_with?("8")
		print "eight"
	elsif number.to_s.end_with?("9")
		print "nine"	
	end
end	

numbers = (1..99).to_a
numbers.each do |number|
	print_num(number)
	puts
end
 