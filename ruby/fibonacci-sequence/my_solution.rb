
def is_fibonacci?(num)
	x = 0
	y = 1
	120.times do
		z = x + y
		puts z
		if num == z
			return true
		end
		x = y
		y = z
	end
	return false
end



