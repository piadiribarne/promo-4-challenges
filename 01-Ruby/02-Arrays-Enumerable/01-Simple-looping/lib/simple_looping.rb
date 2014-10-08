def sum_with_while(min, max)
	sum = min 
	while min < max
		min = min + 1
		sum = min + sum
	end
	return sum
  # CONSTRAINT: you should use a while..end structure
end

def sum_with_for(min, max)
	sum = 0
	for x in (min..max)
		sum = x + sum
	end
	return sum 
  # CONSTRAINT: you should use a for..end structure
end

def sum_recursive(min, max)
    return min if min == max
    if min < max
    min + sumrecursive(min + 1, max)
	elsif 
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

