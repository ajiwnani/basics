
# intro #
"Welcome to Secret Number Game by Archana"
player_name=gets"And your Name is?"
puts "Welcome #{player_name}"
puts "The Secret Number Game is simple. The computer selectes a secret number from 1-10." 
puts "You have 3 tries to guess the secret number. Lets get started."
# intro end#

#set up variables#
secret_number=[1,2..10]
x=rand(secret_number) # x=computer guess #
guess=gets"Select an integer from 1 to 10:"
diff=x-guess #difference between secret number and guess to give user direction#
guess_count=1
#set up variables end#

#method to check guess#
def check 
	if guess==x
	puts"Congratulations you guessed right. You won the game"
	end
#method to check guess end#

if guess==x 
	puts"Congratulations! You guessed right on your first try. You win....Wohooo!!!"

#direction to user#
     	
     	#high guess test#
		elsif diff>-4
		puts "Sorry #{guess} is not the secret number. You guessed too high. lets try again"
	
		#low guess test#
		elsif diff>4
		puts "Sorry #{guess} is not the secret number. You guessed too low. lets try again"

		#close guess test#
		elsif
		puts "Sorry #{guess} is not the secret number, but you're close. lets try again"
		
#direction to user end#
	
else	
	guess_count +=1
	if guess_count<=3
	guess=gets "This is your #{guess_count}to.s try. Select an integer from 1 to 10:"
	check #calling check method#

	else
	puts "Sorry you lost the game. The secret number is #{x}.to.s"

end

