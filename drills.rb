puts [5, 11, 50].reject{|num| num <= 10}.reduce(:+) == 61
puts [5, 11, 50].reject{|num| num <= 50}.inject{|sum, n| sum + n} != 0
puts [5, 11, 50].reject{|num| num <= 50}.inject{|sum, n| sum + n} == nil
puts [5, 11, 50].reject{|num| num <= 50}.inject(0){|sum, n| sum + n} == 0

@first_name = "Nick"
puts "My first name is #@first_name"

last_name = "Siefken"
puts "My last name is #last_name"
puts "My last name is actually #{last_name}"

p [1].flatten == [1]
p [2].pop == 2
x = [3, 4, [5, 6]]
p x.flatten == [3, 4, 5, 6]
p x == [3, 4, [5, 6]]
p x.pop == [5, 6]
p x == [3, 4]
p x.push([5, 6]) == [3, 4, [5, 6]]
p x.flatten! == [3, 4, 5, 6]
p x == [3, 4, 5, 6]


hash = {"k" => 2, "h" => 3, "j" => 1}
p hash.values == [2, 3, 1]
min_value = hash.values.min
p min_value == 1
p hash.key(min_value) == "j"

p false if 1 > 2