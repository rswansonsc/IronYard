require 'sinatra'
require 'faker'


get '/' do
	erb :blog, layout: :blog_home_1
end
get '/blog' do
	erb :blog, layout: :blog_home_1
end
get '/index' do
  erb :blog_post, layout: :blog_post
end
