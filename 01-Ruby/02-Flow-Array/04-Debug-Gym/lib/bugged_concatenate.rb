def bugged_concatenate(array)
  array.reduce("") { |a, e| a + e }.upcase
end

def build_1984_title
  bugged_concatenate([1.to_s, "9", 84.to_s, " ", "George Orwell"])
end