REGEX = /^[a-zA-Z0-9\-\_]+@[A-Za-z]+(?:\.[A-Za-z0-9]{2,3}){1,2}$/

def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  !!(email =~ REGEX)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |email| valid?(email) }
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
end
