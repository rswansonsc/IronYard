class = Track

  @@track_lap = 0
  # @@track_winner = false
  attr_accessor :name, :track_lap

  def initialize (name, track_lap)
    @name = name
    @@track_lap = track_lap    
  end

  def advance_track_lap(horse)
    @@track_lap += 1
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