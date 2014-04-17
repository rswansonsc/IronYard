require	'sinatra'
require 'data_mapper'


DataMapper.setup(
	:default,
	'mysql://root@localhost/superheros'
	)
# => You must create your database in the mysql of "people" for the data tables to reside
# 'mysql://root:password_goes_here@localhost/people'

#Model
class Superhero
	# MySQL automatically gives EVERY object an ID
	# property is a feild that is given to us by "DataMapper" gem
	# Migration, whenever you change a feild inside of a database
	# Instance variables can be 
	include Datamapper::resource

	property :id, Serial
	#id's are always there, number unique
	property :Name, string
	property :superpower1, text
	property :superpower2, text
	property :superpower3, text
end


DataMapper.finalize.auto_upgrade


get '/' do
	@superheroes = Superhero.all
end

	post '/create_superhero' do
	puts params
	superhero = superhere.new
	superhero.name = params[:superhero][:name]
	superhero.superpower = params[:superhero][:superpower1]
	superhero.superpower = params[:superhero][:superpower2]
	superhero.superpower = params[:superhero][:superpower3]
	superhero.save

	redirect to '/'
	end

	get '/edit_superhero:id/' do
		@superhero = Superhero.get params [:id]
		
	end

	put '/edit_superhero:id/' do
		@superhero = Superhero.get params [:id]
		@superhero.update params [:superhero]
		redirect '/'
	end

	end
 