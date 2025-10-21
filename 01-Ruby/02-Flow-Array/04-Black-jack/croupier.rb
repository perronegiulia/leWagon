require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  score = "\nYour score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > bank_score && player_score < 21
    message = "\e[32m\nYou win!\e[0m"
  elsif player_score == 21
    message = "\e[32m\nBlack Jack!\e[0m"
  elsif player_score == bank_score
    message = "\n\e[33mPush :|\e[0m"
  elsif player_score > 21
    message = "\n\e[31mYou lose, I think #{player_score} is higher than 21...\e[0m"
  else 
    message = "\n\e[31mYou lose to the bank :)\e[0m"
  end
  
end
