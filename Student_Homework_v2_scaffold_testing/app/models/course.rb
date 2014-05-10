class Course < ActiveRecord::Base
	belongs_to :location
	# whenevAder you have a belongs_to, you need a corresponding ID in the table
	# belongs_to :location requires location_id in the table
	has_many :assignments

end
