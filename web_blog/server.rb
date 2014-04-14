require 'sinatra'
require 'faker'


get '/' do
	erb :home, layout: :index
end
get '/about' do
	erb :about, layout: :index
end
get '/blog' do
	erb :blog, layout: :index
end
get '/contact' do
	erb :contact, layout: :index
end
get '/home' do
  erb :home, layout: :index
end
get '/other' do
	erb :other, layout: :index
end
get '/services' do
  erb :services, layout: :index
end
