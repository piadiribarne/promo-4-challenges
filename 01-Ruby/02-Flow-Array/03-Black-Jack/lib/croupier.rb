require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
	return "Your score is #{player_score}, bank is #{bank_score}"
  # TODO: return (not print!) a message containing the player's score and bank's score
end

def end_game_message(player_score, bank_score)
    if player_score > 21 
    	return "Lose"
    elsif player_score == 21
    	return "Black Jack"
    elsif player_score >= bank_score
    	return "win"
    else 
    	return "lose"
    end  	
  # TODO: return (not print!) a message telling if the user won or lost.
end


def play_game
	puts "Card? type 'y' or 'yes' for a new card"
	player_answer = gets.chomp

	player_score = 0
	bank_score = pick_bank_score
	while player_answer == "y" || player_answer == "yes"
		player_score = pick_player_card + player_score 
		puts state_of_the_game(player_score, bank_score)
		puts "Card? type 'y' or 'yes' for a new card"
		player_answer = gets.chomp
	end
	puts end_game_message(player_score, bank_score)
end 
