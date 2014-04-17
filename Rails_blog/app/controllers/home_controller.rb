class HomeController < ApplicationController
	# respond_to :html

	def index
		@blog_posts = Bloginfo.all
	end
end


