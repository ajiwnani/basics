
#		This class holds most of the game logic and should:
#		Inform player of the game rules with their name.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.


require_relative 'lib/secret_number.rb'
require_relative 'lib/player.rb'

class Game 

     def rules
      puts "Okay #{name}, so here are the rules:"
      puts " You must guess a number between one and ten"
      puts " You will only have three tries to get it right"
    end


    def initialize
    @guesses=3
    #guesses_left=guesses-1 
    @player=Player.New()
    @secret_number=SecretNumber.New()
    end


    def try_again(guesses_left, next_guess)
      puts "Sorry, that's not it..."
      puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
      puts "Guess #{next_guess}!" if guesses_left > 0
      puts
    end

    while guess > 0
      puts "What's your guess?"
      player_guess = gets.strip.to_i

      if player_guess == secret_number
        puts "YOU WON!"
        exit
      elsif player_guess > secret_number
        guesses_left -= 1
        try_again(guesses, "lower")
      elsif guess < secret_number
        guesses_left -= 1
        try_again(guesses_left, "higher")
      end
    end

    puts "Game over. You didn't correctly guess the number. It was #{secret_number}, duh."