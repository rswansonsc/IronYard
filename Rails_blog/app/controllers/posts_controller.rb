class PostsController < ApplicationController
	

	def show
		@blog = Bloginfo.find params[:id]
	end

	def create
		@blog = Bloginfo.create blog_parms
		redirect_to root_path
	end

end
