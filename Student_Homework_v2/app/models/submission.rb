class Submission < ActiveRecord::Base
	belongs_to :course
	has_many :comments, as: :commentable
end
