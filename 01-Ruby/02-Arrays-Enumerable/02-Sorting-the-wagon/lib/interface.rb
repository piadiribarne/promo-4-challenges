require_relative "wagon_sort"

puts "Type a student name:"
student_1 = gets.chomp

students = []
students << student_1

student_2 = "a"
while student_2.length != 0  
	puts "Type another student name(or press enter to finish):"
	student_2 = gets.chomp
	students << student_2
end

students = wagon_sort(students)
students.reject! { |c| c.empty? }

puts "Congratulations! Your Wagon has #{students.length} students :"
print "- " + "#{students[0]}"

array = students[1..students.count-2]
array.each do |student|
	print ", #{student} "
end

print "and #{students.last}"

