#Dealer needs to give me a card

#I need cards
#dealer has to give me two cards
#dealer has to get cards
def get_card #parameter is anything passed inside a function
	rand(1..11) 
end

def check_win(cards)
	if cards > 21 
		puts "BUST"
	elsif cards == 21
		puts "WIN"
	end
end

	
cards_with_dealer = []
cards_in_hand = []
cards_in_hand.push(get_card)
cards_in_hand.push(get_card)
# cards_in_hand.each do |card|
# a = "hello #{'dog' if b=="Joshua"}"

@game_on=true
while @game_on==true
	card_values = 0

Print "you have the following cards"

cards_in_hand.each do |card|
	print "#{card}"
	card_values += cards
	end 

puts "Card Vaulues: #{card_values}
puts Do you want to hit Stay?"

Hit_or_stay = gets.chomp
if Hit_or_stay == 'h'
	cards_in_hand.push(get_card)
	check_win(card_values)
if Hit_or_stay == 's'
	@game_on=false
	#check win


#decicde to hit or stay
# Hit
# => i get an additonal card
# Stay
# => do not get an additional card
#check to see if I win
# => if my cards are 21 or more 
# => if my cards are less than 21 I can take another card

