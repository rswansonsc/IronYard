class  Track

  @@track_lap = 0
  @horse_winner = "start"
  # @@track_winner = false
  attr_accessor :name, :track_lap, :horses

  def initialize (name, track_lap)
    @name = name
    @@track_lap = track_lap  
    @horses = []

  end
  #from Nick B.
  def add_horse(horse_1)
  @horse.push(horse)
  end

  #this is what I had...at bottom
  # def add_horse(horse)
  #   @horses.push(horse)
  # end
  
  def self.track_lap
    @@track_lap = :track_lap
  end

  def advance_track_lap(horse)
    @@track_lap += 1
    move_horse_lap.each {|horse|}
  end

  def display_race
      # system("clear")
      puts "Start---------------------------------Finish"
#NICK this first line runs but the #{horse_1.name} seems to keep giving me errors
      # puts horse_1.name
      puts "Horse_1: #{@horse_1.name}\t Lap: #{(@horse_1.horse_lap).times {print "*"}}"
      puts "Horse_2: #{@horse_2.name}\t Lap: #{(@horse_2.horse_lap).times {print "*"}}"
      puts "Horse_3: #{@horse_3.name}\t Lap: #{(@horse_3.horse_lap).times {print "*"}}"
      puts "Horse_4: #{@horse_4.name}\t Lap: #{(@horse_4.horse_lap).times {print "*"}}"


  end
#NICK this method(i think I am calling that correctly) does not seem to be able to run from the 
#Horse_race.rb???
  def check_win 
        display_race
        if horse_1.horse_lap >= 20 then @horse_winner = horse_1.name; end 
        if horse_2.horse_lap >= 20 then @horse_winner = horse_2.name; end
        if horse_3.horse_lap >= 20 then @horse_winner = horse_3.name; end 
        if horse_4.horse_lap >= 20 then @horse_winner = horse_3.name; end 
        # system("clear") 
  end 
  
 

  def annouce_winner
  @track_lap=20
  @run_race=false
  puts "Winner Winner Chicken Dinner"
  puts ''
  puts "Horse: #{@horse_winner} is the WINNER!!!"
#NICK not sure if this should have the '@display_race' here or not but does seem to be able to call from
#Horse_race.rb??? 
  @display_race 
  end
end

  # move_horse_lap
  
  # def self.no_of_laps
  #   @track_lap += 1
  # end

  # def track_status
  #   @.each do |crop|
  #     if crop.class == Apple
  #       @sorted_crop[apple:].push(crop)
      
  #     elsif crop.class == Cherry
  #       @sorted_crops[cherry:].push(crop)
  #     end
  #   end   
