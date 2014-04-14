require 'sinatra'
require 'data_mapper'
require 'shotgun'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'  
)
# If you had a password:
# database://username:password@location/database_name

# Model
class Blog
  include DataMapper::Resource

  # MySQL automatically gives EVERY object an ID
  # Migration: Whenever you change a field inside of a database
  # property: this is a keyword given to us from our DataMapper gem
  property :id, Serial
  property :blog_date, String
  property :blog_title, String
  property :blog_content, String
  # property :blog_picture, String
end

DataMapper.finalize.auto_upgrade!


get '/' do
  @blog = Blog.all
	erb :blog, layout: :blog_home_1
end
get '/blog' do
	erb :blog, layout: :blog
end
get '/index' do
  erb :blog_post, layout: :blog_post
end
