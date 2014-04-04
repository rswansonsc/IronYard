class orange
	@@no_of_oranges = 0
	attr_accessor :name, :color

	def initialize (name, color)
		puts self
		@name = name
		@color = color
		@@no_of_oranges = 0
	end

	def self.no_of_oranges #self. is in the class "orange", the scope of self is the object or class you are working in
		
		puts self
		@@no_of_oranges += 1
	end

end

# orange = orange.new("bing", "red")

