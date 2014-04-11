require 'sinatra'

# Hey dude, this is a comment
get '/' do
  "This is the root action!"
end

get '/index' do
  "This is the index action!"
end

get '/hello_world' do
  erb :hello_world
end

get '/hey_dude' do
  @instance = "Instance"
  @instance2 = ["Dudette", "Todd", "Kiwi", "George"]
  erb :hey_dude
end

# get '/hey_man/:name' do |name|
#   @name = name
#   erb :hey_man
# end

get '/hey_man/:name' do
  @name = params[:name]
  erb :hey_man
end

get '/layout_test' do
  @lorem_text = "Lorem ipsum dolor some Latin I don't know."
  erb :layout_test, layout: :index
end

get '/layout_test2' do
  @bros = [
    {first_name: "Chad", last_name: "Croger"},
    {first_name: "Brosef", last_name: "Stalin"},
    {first_name: "History", last_name: "Bro"}
  ]
  erb :render_bros, layout: :index
end

get '/layout_test3' do
  @sorority_sisters = [
    {first_name: "Sup", last_name: "Sue"},
    {first_name: "Hey", last_name: "Sally"},
    {first_name: "Brooke", last_name: "Caroline"},
    {first_name: "Two", last_name: "Firstnames"}
  ]
  erb :sorority_sisters, layout: :index
end

get '/blog_posts' do
  @blog_posts = [
    {title: "Hey man", timestamp: "Jan 29, 2014", content: "THis is some cool content"},
    {title: "Title 2", timestamp: "Feb 9, 2014", content: "THis is some more cool content"},
    {title: "KISS", timestamp: "March 1, 2014", content: "KISS == Keep It Simple Stupid"}
  ]
  erb :blog_posts, layout: :index
end