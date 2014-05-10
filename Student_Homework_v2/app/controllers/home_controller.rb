class HomeController < ApplicationController

	def index
  @locations = Location.all 
  @courses = Course.all 
  @assignments = Assignment.all 
  @comments = Comment.all 
  @submisisons = Submission.all 
  end

end