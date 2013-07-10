require 'json'
require 'rest-client'
require_relative 'NYT_lib/Remote_Source.rb'


puts "----	Hello this is a simple program created by Archana"
puts "----	This program uses the NYT Events API"
puts "----	It displays the current movie listings"
puts "----	And based on your selection, provides a description of the movie of your choice :)"
puts "----	Let's get started."
puts "----	Type 'Yes' to display all movies."
puts "----	Type 'No' to exit the program."


choice = gets.chomp.downcase
case choice
	when 'Yes'
		puts "Cool. Here are the movies event listings from the NY Times"
		# displays movie listings from Movie Hash # 
		MovieHash.each do |movie| puts "MovieHash[event_name]"
		puts "Pick a movie you would like more information about."
		movie_choice= gets.chomp.downcase

	  		if movie_choice[title.to_sym].nil?
    			puts "Movie not found! Are you sure you typed the movie title correctly. Lets try again"
  			else 
  				puts "Here is the description for #{"movie_choice"}:"
  				MovieHash.map do |description|
  				puts "description"
  	
	else
	"Cool, I hope you try the program next time. Goodbye"
 
	end

end

