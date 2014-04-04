
			@horse_lap = 18
			@track_lap = 20
			@horse_name = 'good guy horse'
			@go_no_go = "go"
			@run_race = "y"
			# codes = ["gofast","gofaster"] 
			codes = "gofast" 

			def check_win
				if @horse_lap > 20
							system("clear")
							puts "Winner Winner Chicken Dinner"
							puts ''
							puts 'Horse: #/{@horse_name} is the WINNER!!!'
				end
			end
						
			puts "Lets get going on a horse race!"; sleep 2
			system("clear")
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
							# system("clear")
							# check_win	
								if @horse_lap > 19
									system("clear")
									puts "Winner Winner Chicken Dinner"
									puts ''
									puts 'Horse: #/{@horse_name} is the WINNER!!!'
								end	
							

						else
							puts "you have successfully entered a winner pass key"; sleep 2# horse_lap += 1
							track_lap -= 1
							horse_lap += 10
							# check_win #system("clear")
								if @horse_lap > 19
											system("clear")
											puts "Winner Winner Chicken Dinner"
											puts ''
											puts 'Horse: #{@horse_name} is the WINNER!!!'
								end
							# horse_lap += rand(1.4)
							# puts "The Winner is: #{horse_winner}"
						end
			end	