def pmu_format!(race_array)
	 a = 0
 race_array.map! do |x|
   a += 1
   "#{a}-#{x}!"
 end
 race_array.reverse!
end
  # TODO: modify the given array so that it is PMU-consistent. This method should return nil.




