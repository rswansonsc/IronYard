require "./cherry.rb" #causes the code from cherry.rb to be pulled into process
require "./apple.rb" #causes the code from apple.rb to be pulled into process
require "./orange.rb" #causes the code from apple.rb to be pulled into process

require "./orchard.rb" #causes the code from apple.rb to be pulled into process


# class Orchard
# 	attr_accessor :name, :add_crop

iron_grove.apple.new("Granny Smith", "Green")

iron_grove = orchard.new ('Iron Grove')
iron_grove.add_crop (Granny_Smith)

collins = cherry.new("collin", "green")
iron_grove.add_crop(collins)

honey_crisp = apple.new("Honey Crisp", "Yellow")
iron_grove.add_crop(honey_crisp)

naval = orange.new("Naval", "Yellow")
iron_grove.add_crop(naval)


# gitter = orchard.new("gitter")
# gitter_apple=apple.new("gitter", "dark green")
# gitter.add_crop(gitter_apple)


puts iron_grove.name
puts iron_grove.crop.inspect
# puts iron_grove.sort_crop
# iron_grove.delete_crop(honey_crisp) #this will re


