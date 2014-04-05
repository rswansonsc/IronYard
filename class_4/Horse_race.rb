require "./horse.rb" #causes the code from cherry.rb to be pulled into process
# require "./track.rb" #causes the code from apple.rb to be pulled into process


def initialize (name, breed, horse_lap)
horse_1=Horse.new("Golden Nugget", "Good Guy", 0)
horse_2=Horse.new("Bad_Mare", "Bad_Guy", 0)
horse_3=Horse.new("Raggy_Runner", "Bad_Guy", 0)
horse_4=Horse.new("Mad_Meany", "Bad_Guy", 0)
end
# Display horse and lap position

# (1..4).each do |number|
# 	"horse_#{number}"

def race	
horse_lap=19	
run_race = true
horse_winner = WinnerWinner
	puts "Lets get going on a horse race!"; sleep 2
	system("clear")
	puts "The Horses are in the Starting Gate!!"; sleep 1;system("clear")
	puts "Horses to the ready!"; sleep 1;system("clear")
	puts "Their Off!!!"; sleep 1;system("clear")
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

		@horse_lap = 18
		@track_lap = 3
		@horse_name = 'good guy horse'
		@go_no_go = "go"
		@run_race = "y"
		# codes = ["gofast","gofaster"] 
		codes = "gofast" 

		def check_win
			if @horse_lap > 20
				@track_lap=0
						system("clear")
						puts "Winner Winner Chicken Dinner"
						puts ''
						puts "Horse: #{@horse_name} is the WINNER!!!"
			end
		end
					
	
		while @track_lap != 0

			puts "you are on Horse lap #{@horse_lap}"
			puts "remaining Track laps #{@track_lap}"
			puts "Enter code, word from dictionary!!"
			puts "enter advancement code to move horse" #
				@go_no_go = gets.chomp
					if @go_no_go != codes				
					 puts @go_no_go #, sleep 2
						@track_lap -= 1
						@horse_lap += 1
						system("clear")
						check_win								

					else
						puts "You have successfully entered a winner pass key"; sleep 2# horse_lap += 1
						track_lap -= 1
						horse_lap += 10
						check_win #system("clear")
					end
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


# puts iron_grove.name
# puts iron_grove.crop.inspect
# puts iron_grove.sort_crop
# iron_grove.delete_crop(honey_crisp) #this will re


# horse 1 is your horse (Golden_Nugget)
# 3 villian horses (Bad_Mare, Raggy_Runner, Mean_and_Sneaky)