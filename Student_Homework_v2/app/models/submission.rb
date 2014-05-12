class Submission < ActiveRecord::Base
	belongs_to :assignments
	has_many :comments, as: :commentable
end
