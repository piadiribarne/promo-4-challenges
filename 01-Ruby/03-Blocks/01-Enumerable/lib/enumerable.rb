def sum_odd_indexed(array)
  sum = 0
  array.each_with_index do |a,i|
    if i % 2 == 1
    sum = sum + a
    end 
  end
sum
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
end

def even_numbers(array)
  array.select do |item|
    item.even?
  end
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
end

def short_words(array, max_length)
  array.reject do |item|
    item.length > max_length
  end
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  array.find do |item|
    item < limit
  end
end

def add_bang(array)
  array.map do|item|
    item + "!"
  end
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def product(array)
  array.reduce(1, :*)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  new_array = array.each_slice(2)
  new_array = new_array.map do |slices|
    slices.sort
  end
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
end
