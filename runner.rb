
#   Runner
#   This is the main file that you will run (a.k.a. your 'runner' file'). You will invoke this with ruby runner.rb
#   The runner.rb file is NOT a class, but is just a file with Ruby that will perform tasks and create classes
#   It will require other classes from other files as needed
# 
# This file will contain Ruby code that will:
# - Say hello to the user
# - Ask for the player's name
# - Create a new Player instance with the name
# - Create a new Game instance, and pass it the Player instance as an argument
# - Tell the game to start



require_relative 'lib/secret_number.rb'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

puts "Welcome to the secret number game!"
puts "This game was created by Brooks"
puts "What's your name?"


name=Player.new(player_name)
player_name=gets.strip.capitalize

game=Game.new(name) 
game.start