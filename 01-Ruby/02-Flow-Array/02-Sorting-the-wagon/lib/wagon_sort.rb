def wagon_sort(students)
  students_array = students.sort_by do |student| 
  	student.downcase 
  end
  return students_array
end
