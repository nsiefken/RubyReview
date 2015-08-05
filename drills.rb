puts [5, 11, 50].reject{|num| num <= 10}.reduce(:+) == 61
puts [5, 11, 50].reject{|num| num <= 50}.inject{|sum, n| sum + n} != 0
puts [5, 11, 50].reject{|num| num <= 50}.inject{|sum, n| sum + n} == nil