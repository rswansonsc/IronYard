class = Track

  @@track_laps = 0
  @@track_winner = false
  attr_accessor :name, :lap

  def initialize (name, lap)
    @name = name
    @lap = []
    
  end

  def add_lap(horse)
    @add_lap.push(horse_lap)
  end
    
  def self.no_of_laps
    @@track_laps += 1
  end

  # def track_status
  #   @.each do |crop|
  #     if crop.class == Apple
  #       @sorted_crop[apple:].push(crop)
      
  #     elsif crop.class == Cherry
  #       @sorted_crops[cherry:].push(crop)
  #     end
  #   end   