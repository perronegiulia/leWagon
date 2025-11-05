REGEX = /^(?:\+33\s?0?[1-9]|0[1-9])(?:[ -]?\d{2}){4}$/

def french_phone_number?(phone_number)
  !!(phone_number =~ REGEX)
end
