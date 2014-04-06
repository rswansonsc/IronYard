class Horse	

  @@horse_lap_count = 0
  
  attr_accessor :name, :breed, :horse_lap 
  #where :breed is the "Good_Guy" (me) or the "Villian" (bad other 3 horses)

  def initialize (name, breed, horse_lap)
    @name = name
    @breed = breed
    @horse_lap = horse_lap
    @@horse_lap_count += 1
  end

  def move_horse_lap
    @horse_lap += rand(1..4)

  end

end

# Cherry = cherry.new("bing", "red")


# class Cherry
#   @@no_of_cherries = 0
#   attr_accessor :name, :color

#   def initialize (name, color)
#     @name = name
#     @color = color
#     @@no_of_cherries = 0
#   end

#   def self.no_of_cherries
#     @@no_of_cherries += 1
#   end

# end

# # Cherry = cherry.new("bing", "red")