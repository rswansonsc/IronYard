class HomeController <ApplicationController
	respond_to :html
	#format that the Ruby system responds to


	def index
# use to erb: index, now just use def index
	@people_in_que = Que.all

	end

end
