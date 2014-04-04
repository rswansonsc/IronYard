require "./horse.rb" #causes the code from cherry.rb to be pulled into process
# require "./track.rb" #causes the code from apple.rb to be pulled into process


def initialize (name, breed, horse_lap)
horse_1=Horse.new("Golden Nugget", "Good Guy", 0)
horse_2=Horse.new("Bad_Mare", "Bad_Guy", 0)
horse_3=Horse.new("Raggy_Runner", "Bad_Guy", 0)
horse_4=Horse.new("Mad_Meany", "Bad_Guy", 0)

# Display horse and lap position

# (1..4).each do |number|
# 	"horse_#{number}"
# end

def race	
horse_lap=19	
run_race = true
horse_winner = WinnerWinner
puts "The Horses are out of the Starting Gate!!"
	if run_race == true
		system("clear")
		puts "Horse 1: #{horse_1.name}\t Track Position: #{horse_1.horse_lap}"
		puts "Horse 2: #{horse_2.name}\t Track Position: #{horse_2.horse_lap}"
		puts "Horse 3: #{horse_3.name}\t Track Position: #{horse_3.horse_lap}"
		puts "Horse 4: #{horse_4.name}\t Track Position: #{horse_4.horse_lap}"


			# Get user input
			# compare the user input to the winner code
			#   if the winner code
			#			advance the GOOD horse(s) by the code
			#   else (if it's NOT the winner code)
			#      advance the horses randomly


			horse_lap = 0
			track_lap = 20
			go_no_go = "go"
			# codes = ["gofast","gofaster"] 
			codes = "gofast" 
			

			puts "Lets get going on a horse race!", sleep 2
			system("clear")
			go_no_go = gets.chomp
				if go_no_go != codes				
					puts "Enter code, word from dictionary!!"
					puts "enter advancement code to move horse" # puts go_no_go #, sleep 2
					track_lap -= 1
					horse_lap += 1
				else
					puts "you have successfully entered a winner pass key"# horse_lap += 1
					track_lap -= 1
					horse_lap += 1
					horse_lap += rand(1.4)
					# puts "The Winner is: #{horse_winner}"
				end

	end
end
puts "Please select your answer"
puts "Select 1, 2, 3 or 4"
answer = gets.chomp.to_i



if answer == question[:ak]
	@answer_correct += 1
	puts "Great work, continue!"
	puts ''; sleep 1
	# system('clear')
	# wait 5 sec (need command)
	# break if gets.chomp
elsif answer != question[:ak]
	@answer_wrong += 1
	puts "Oops Ya missed that one!"
	puts "Control-C to quit and go study"; sleep 1 # wait x sec (need command)
	# system('clear')
	
end

# puts horse_1.name
# puts horse_"#{1..4).to_f}"

# horse_race=Track.new("Dounty Downs", 0)
# horse_race=Track.new("Golden Feilds", 0)

# iron_grove = orchard.new ('Iron Grove')

# iron_grove.add_crop (Granny_Smith)

# collins = cherry.new("collin", "green")
# iron_grove.add_crop(collins)

# honey_crisp = apple.new("Honey Crisp", "Yellow")
# iron_grove.add_crop(honey_crisp)

# naval = orange.new("Naval", "Yellow")
# iron_grove.add_crop(naval)


# gitter = orchard.new("gitter")
# gitter_apple=apple.new("gitter", "dark green")
# gitter.add_crop(gitter_apple)


puts iron_grove.name
puts iron_grove.crop.inspect
# puts iron_grove.sort_crop
# iron_grove.delete_crop(honey_crisp) #this will re


# horse 1 is your horse (Golden_Nugget)
# 3 villian horses (Bad_Mare, Raggy_Runner, Mean_and_Sneaky)