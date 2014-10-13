def french_phone_number?(phone_number)
  # TODO: true or false?
  puts "Enter your phone number"
  phone_number.gets.chomp
  phone_number.match(/0|\+33\s?)[6|7](\s?\d{2}){4}/)
end
