def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number =~ /(0|\+33)[\s-]?[6]([\s-]?\d{2}){4}/
  	return true
  else
  	return false
  end
end

