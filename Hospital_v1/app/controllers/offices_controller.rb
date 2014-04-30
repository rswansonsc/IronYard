class OfficesController < ApplicationController

def show
	@office = Office.find params[:id]
end

def new
	@office = Office.new
end

def create
  @office = Office.create office_params
  redirect_to root_path
end

def edit
	@office = Office.find params[:id]
end

def update
	@office = Office.find params[:id]
	@office.update_attributes office_params
	redirect_to root_path
end

private
	def office_params
		params.require(:office).permit(:name, :description)
	end
# white listing attributes must list all attributes here to write, part of Ruby$

end

