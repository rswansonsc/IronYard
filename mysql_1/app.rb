require	'sinatra'
require 'data_mapper'


DataMapper.setup(
	:default,
	'mysql://root@localhost/people'
	)
# 'mysql://root:password_goes_here@localhost/people'

#Model
class Person
	# MySQL automatically gives EVERY object an ID
	# property is a feild that is given to us by "DataMapper" gem
	# Migration, whenever you change a feild inside of a database
	# Instance variables can be 
	include Datamapper::resource

	property :id, Serial
	#id's are always there, number unique
	property :first_name, String
	property :last_name, String
end


DataMapper.finalize.auto_upgrade
	# class (mvc) the class name must be uppercase
	# app.rb , is the 
	# mvc = Model View Controller, so "class Person" is the model, where you data connector
	# "get do" is the Controller
	# veiw is - *.erb is the view or how the data is displayed

# block command
get '/' do 
	erb :root
end

get '/create_person' do
	erb :create_person 
end

post '/create_person' do
	# put parms, params is a hash

	# @person = Person.create parms [:person]
	# the line above combines lower two lines
	@person = Person.new params[:person]
	@person.save

	redirect to('/')
end

get '/edit_person/:id' do
	# params[:id]
	@person = Person.get params[:id]
	erd :edit_person
	redirect to('/')
	end

put '/edit_person/:id' do
	@person.update Person.get params[:id]
	@person.update  params[:person]

	redirect to('/')
end

delete '/delete_person/:id' do
	@person.update Person.get params[:id]
	@person.destroy
	redirect to('/')
end















