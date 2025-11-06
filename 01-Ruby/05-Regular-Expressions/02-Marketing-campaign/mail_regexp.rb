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
  emails.group_by do |email|
    email.split('.').last
  end
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  username, domain_part = email.split('@')
  domain_tld = domain_part.split('.')

  {
    username: username,
    domain: domain_tld.first,
    tld: domain_tld.last
  }  
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  parts = compose_mail(email) 
  
  # TODO: translate subject, body, closing and signature, according to TLD

  translated = {
          body: "Come and visit us!",
          closing: "See you soon",
          signature: "The Team",
          subject: "Our website is online",
        }
  
  case parts [:tld]
  when "de"
    translated = {
      subject: "Unsere Website ist jetzt online",
      body: "Komm und besuche uns!",
      closing: "Bis bald",
      signature: "Das Team"
    }
  when "fr"
      translated = {
      body: "Venez nous rendre visite !",
      closing: "A bientot",
      signature: "L'équipe",
      subject: "Notre site est en ligne",
    }
  end
  parts.merge(translated)

end
