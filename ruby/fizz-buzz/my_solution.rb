

def super_fizzbuzz(array)
	fizzbuzzed_array = []
	array.each do |number|
		if number % 5 == 0 && number % 3 == 0
			fizzbuzzed_array << "FizzBuzz"
		elsif number % 3 == 0
			fizzbuzzed_array << "Fizz"
		elsif number % 5 == 0
			fizzbuzzed_array << "Buzz"
		else
			fizzbuzzed_array << number
		end
	end	
	return fizzbuzzed_array
end

# def fizzbuzz
# 	i = 1
# 	until i > 100
# 		if i % 5 == 0 && i % 3 == 0
# 			puts "FizzBuzz"
# 		elsif i % 3 == 0
# 			puts "Fizz"
# 		elsif i % 5 == 0
# 			puts "Buzz"
# 		else
# 			puts i
# 		end
# 		i += 1
# 	end	
# end

# fizzbuzz