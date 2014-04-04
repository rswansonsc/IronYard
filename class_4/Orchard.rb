# require "./cherry.rb" #causes the code from cherry.rb to be pulled into process
# require "./apple.rb" #causes the code from apple.rb to be pulled into process


class Orchard
	@@no_of_trees = 0
	attr_accessor :name, :crop, :workers

	def initialize (name)
		@name = name
		@crop = []
		# @@no_of_trees = 0
		@sorted_crops = {apple:[], cherry:{}}
	end

	def add_crop(crop)
		@crop.push(crop)
	end
		
	def self.no_of_trees
		@@no_of_trees += 1
	end

	def sort_crop
		@crop.each do |crop|
			if crop.class == Apple
				@sorted_crop[apple:].push(crop)
			
			elsif crop.class == Cherry
				@sorted_crops[cherry:].push(crop)
			end
	end		
	@sorted_crops	

	def delete_crop
		@crop.delete(crop) #modular ability to delete a crop
	end	

end

# Cherry = cherry.new("bing", "red")


# Build notes:
