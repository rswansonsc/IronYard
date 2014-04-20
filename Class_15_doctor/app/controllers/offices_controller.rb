class OfficesController < ApplicationController

def show
	@office = Office.find params[:id]
end

def new
	@office = Office.new
end

def edit
end

private
	def office_params
		params.require(:office).permit(:name, :description)
	end


end

