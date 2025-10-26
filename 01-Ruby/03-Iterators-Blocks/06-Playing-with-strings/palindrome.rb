def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  clean = a_string.downcase.gsub(/[^a-z]/, "")

  return false if clean.empty?
  
  clean == clean.reverse

end
