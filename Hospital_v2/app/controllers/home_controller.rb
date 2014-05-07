class HomeController < ApplicationController
  
  def index
  	@hospitals = Hospital.all
  	@patients = Patient.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
