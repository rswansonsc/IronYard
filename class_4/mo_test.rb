require "./horse.rb" #causes the Object code "Horse"from horse.rb to be pulled into process
# Horse. :name, :breed, :horse_lap

# require "./track.rb" #causes the code from "Track"from track.rb to be pulled into process


horse_1 = Horse.new("Golden Nugget", "Good Guy", [])
horse_2 = Horse.new("Bad_Mare", "Bad_Guy", [])
horse_3 = Horse.new("Raggy_Runner", "Bad_Guy", [])
horse_4 = Horse.new("Mad_Meany", "Bad_Guy", [])

# track_1 = Track.new("Dounty Downs")

# Display horse and lap position
	def display_race
		system("clear")
		puts "Horse 1: #{horse_1.name}\t Track Position: #{horse_1.horse_lap}"
		horse_1.horse_lap.push "*"
		horse_1.horse_lap.each {|horse_lap| print horse_lap}

		puts "Horse 2: #{horse_2.name}\t Track Position: #{horse_2.horse_lap}"
		horse_2.horse_lap.push "*"
		horse_2.horse_lap.each {|horse_lap| print horse_lap}
		
		puts "Horse 3: #{horse_3.name}\t Track Position: #{horse_3.horse_lap}"
		horse_3.horse_lap.push "*"
		horse_3.horse_lap.each {|horse_lap| print horse_lap}
		
		puts "Horse 4: #{horse_4.name}\t Track Position: #{horse_4.horse_lap}"
		horse_4.horse_lap.push "*"
		horse_4.horse_lap.each {|horse_lap| print horse_lap}	
	end