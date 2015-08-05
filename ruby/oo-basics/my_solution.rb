
class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
  end

  def average
  	sum = 0
  	@scores.each do |score|
  		sum += score
  	end
  	sum/@scores.length
  end

  def letter_grade
  	if average >= 90
  		return 'A'
  	elsif average >= 80
  		return 'B'
  	elsif average >= 70
  		return 'C'
  	elsif average >= 60
  		return 'D'
  	else
  		return 'F'
  	end 			
  end
end

def linear_search(array, name)
	array.each_with_index do |student, index|
		if name == student.first_name
			return index
		else
			return -1
		end
	end
end

def binary_search_iterative(array, name)
	names = []
	array.each {|student| names << student.first_name}
	names.sort!
	index = 0
	while names.length > 0
		halfway_point = names.length/2
		if names[halfway_point] == name && names[0] == name
			return index
		elsif (names.length == 1 && names[0] != name)
			return -1
		elsif names[halfway_point] <= name
			names = names[halfway_point..-1]
			index += halfway_point
		elsif names[halfway_point] > name
			names = names[0..halfway_point-1]
		end
	end
end

def binary_search_recursive(array, name, index = 0)
	if !array[0].is_a?(String)
		names = []
		array.each {|student| names << student.first_name}
		names.sort!
	else
		names = array
	end
	return -1 if (names.length == 1 && names[0] != name)
	halfway_point = names.length/2
	if names[halfway_point] == name && names[0] == name
		return index
	elsif names[halfway_point] <= name
		names = names[halfway_point..-1]
		index += halfway_point
		binary_search_recursive(names, name, index)
	elsif names[halfway_point] > name
		names = names[0..halfway_point-1]
		binary_search_recursive(names, name, index)
	end
end

alex = Student.new(first_name: "Alex", scores: [100,100,100,0,100])
betty = Student.new(first_name: "Betty", scores: [90,100,100,0,100])
carl = Student.new(first_name: "Carl", scores: [80,100,100,0,100])
dave = Student.new(first_name: "Dave", scores: [70,100,100,0,100])
emily = Student.new(first_name: "Emily", scores: [60,100,100,0,100])

students = [alex, betty, carl, dave, emily]







# DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search_iterative(students, "Alex") == 0
p binary_search_iterative(students, "Betty") == 1
p binary_search_iterative(students, "Carl") == 2
p binary_search_iterative(students, "Dave") == 3
p binary_search_iterative(students, "Emily") == 4

p binary_search_iterative(students, "NOT A STUDENT") == -1

puts "Recursion Starts Here"

p binary_search_recursive(students, "Alex") == 0
p binary_search_recursive(students, "Betty") == 1
p binary_search_recursive(students, "Carl") == 2
p binary_search_recursive(students, "Dave") == 3
p binary_search_recursive(students, "Emily") == 4

p binary_search_recursive(students, "NOT A STUDENT") == -1


# Reflection