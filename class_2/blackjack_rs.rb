#Dealer needs to give me a card

#I need cards
#dealer has to give me two cards
#dealer has to get cards
def get_card #parameter is anything passed inside a function
	rand(1..11) 
end

def check_win(cards)
	puts "running check_win routine"
	if cards > 21 
		puts "BUST - You Loose! "
		@game_on=false
	elsif cards == 21
		puts "WINNER - WINNER CHICKEN DINNER"
		@game_on=false
end

	
cards_with_dealer = []
cards_in_hand = []

# cards_in_hand.each do |card|
# a = "hello #{'dog' if b=="Joshua"}"

@game_on=true
while @game_on==true
	card_values = 0
		# - Player gets cards
		cards_in_hand.push(get_card)
		cards_in_hand.push(get_card)
		Print "Player - You have the following cards"

		cards_in_hand.each do |card|
			print "#{card}"
			card_values += cards
			end 

		puts "Card Vaulues: #{card_values}"
		puts "Does the Player want to Hit(h) or Stay(s)? - please use lower case only"

		Hit_or_stay = gets.chomp
		if Hit_or_stay == 'h'
			cards_in_hand.push(get_card)
			check_win(card_values)
		if Hit_or_stay == 's'
			@game_on=false
			check win
		end
			


		# - Dealer gets Cards
		system("clear")
		
		cards_with_dealer.push(get_card)
		cards_with_dealer.push(get_card)
		puts "The Dealer has the following cards"
		puts

		# cards_with_dealer.each do |card|
		# 	print "#{card}"
		# 	card_values += cards
		# 	end 

		# puts "Card Vaulues: #{cards_with_dealer}"
		# puts "Does the Dealer want to Hit(h) or Stay(s)? - please use lower case only"

		# Hit_or_stay = gets.chomp
		# if Hit_or_stay == 'h'
		# 	cards_with_dealer.push(get_card)
		# 	# check_win(card_values)
		# if Hit_or_stay == 's'
			# @game_on=false
			# check_win