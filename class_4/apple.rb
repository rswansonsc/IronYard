class Apple
  attr_accessor :name, :color

  # attr_reader :name, :color
  # both attr_reader and attr_writer are replaced by the command: attr_accessor :name
  # attr_reader :color (combines these on one line)
  # attr_writer :name, :color
  # attr_writer :color (combine these on one line)



APPLE_TYPES = ['Machintosh', 'Granny Smith', 'Fuji', 'Honey Crisp', 'Red Delicious']
# Constant 
# = always in all CAPS
#called by: Apple::APPLE_TYPES


  #constructor (inside a .class the function is a method, call them methods)
  # def initialize (name, color) #allows parameters to passed into method
  # def initialize (*opts) # * 'denotes that the parameter is unlimted'
    # Opts = [0] will be a has
    # * = is called a SPLAT  
  def initialize (name, color)
      puts "initialize Method"
      puts opts [0][:name]
      puts opts [0][:color]
      # puts opts.inspect # use this command to put out result
# commands to use with this format
# apple.new({color: "green"}, {color: "blue"})
      @name = ''
      @@no_of_apples += 1

  end

  # Class Methods
  def self.no_of_apples
    @@no_of_apples
  end

  #Getter method (constructor), reading
  # this is replaced by the "attr_reader :name"
  # def name
  #       puts "Getter Method"
  #     @name = ''
  # end
  # this is replaced by the "attr_reader :color"
  # def color, 
  #       puts "Getter Method"
  #     @name = ''
  # end

  #Setter method (constructor), writing
  # this is replaced by the "attr_writer :name"
  # def name=(value)
  #       puts "Setter Method"
  #     @name = value
  # end
  
  # this is replaced by the "attr_writer :color"
  # def color=(value)
  #       puts "Setter Method"
  #     @name = value
  # end

# some commands that can be used
#brayburn.name = "Sally"
#brayburn.color = "Red"
      
end
