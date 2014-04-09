require 'sinatra'

# this is a code block, everything will be executed in this code block
# TOP LINES are the INDEX action, Root file is "/"
get '/' do
	"Hello World"	
end

#you can enter as many get commands as you want
get '/index' do
	"This is the index action"
end

get '/hello world' do
	erb :hello_world
end

get '/hey_dude' do
	@instance = "Instance"
	@instance2 = %w[dude dude1 dude2 dude3]
	erb :hey_dude
end

get '/hey_man/:name' do
	@name = params[:name]
	erb :hey_man
end

get '/layout_test' do
	@lorem_text = "lorem, blah, blah"
	erb :layout_test, layout: :index
end

get '/layout_test2' do
	@bros = [
		{first_name:"chad", last_name: "bubba"}
		{first_name:"freddy", last_name: "cruger"}
		{first_name:"bubba", last_name: "gump"}

		}]

		erb :layout_test2, layout: :index
		end

get '/layout_test3' do
	@Sisters = [

		{first_name:"Sister1", last_name: "bubba"}
		{first_name:"freddy", last_name: "cruger"}
		{first_name:"bubba", last_name: "gump"}
		}]
	erb :sisters, layout: :index	
	#the erb file sisters.erb would need be built
	#see Nicks notes on github
	end

get '/blog_post'	do
	@blog_post=[
		{

		}]
	erb :blog_posts, layout: :index
#blog_posts = the erb file that is called
#layout = is the command/keyword that is in the Sinatra site
#index =  is the erb file that is opened and format used to present data in the web page
end




#look for localport:4567 (or whatever port is showing)
#to open your localhost page be sure to restart your server, goto localhost:4567/index (your erb file)
#at its root 'sinatra' is a web server
#you can get what ever route you want but you will need to restart e