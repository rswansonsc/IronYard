require 'sinatra'
require 'faker'


get '/' do
	erb :index, layout: :index
end
get '/about' do
	erb :about, layout: :about
end
get '/blog' do
	erb :blog, layout: :blog_home_1
end
get '/index' do
  erb :index, layout: :index
end
get '/other' do
	erb :other, layout: :full_width
end
get '/services' do
  erb :services, layout: :services
end