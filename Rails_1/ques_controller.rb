class QuesController < AppliationController

	# def index
		#get
	# end

	def show
		#calls the show.html.erb file
		@que


	def create
		@que = Que.create que_params [:id]
		redirect_to root_path
	end

	def edit
	end	
	
	def udpate
		@que = Que.create que_params [:id]
		@que.update.attributes que_params
		redirect_to root_path
	end

	def destroy
		@que = Que.create que_params [:id]
		@que.delete
		redirect_to root_path
	end


#private is part of the new Ruby Rails ver4
	private
	def que_params
		params.require(:que).permit(:name)
	end