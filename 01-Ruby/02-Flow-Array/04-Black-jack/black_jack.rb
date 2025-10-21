def pick_bank_score
  bank_score = (16..21).to_a
  bank_score.sample
end

def pick_player_card
  player_card = (1..11).to_a
  player_card.sample.to_i
end
