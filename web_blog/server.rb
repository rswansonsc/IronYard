require 'sinatra'
require 'faker'


get '/' do
	erb :home, layout: :index
end

get '/home' do
  erb :home, layout: :index
end

get '/products' do

@happy_client = []
10.times do
	@happy_client.push(
{person_name:             Faker::Name.name,
person_email:            Faker::Internet.email,
person_company:          Faker::Company.name,
person_company_slogan:   Faker::Company.bs,
person_phone:            Faker::PhoneNumber.phone_number,
person_address:          Faker::Address.street_address,
person_city:             Faker::Address.city,
person_state:            Faker::Address.state,
person_zip:              Faker::Address.zip_code})
end

  erb :products_services, layout: :index


end

get '/about_us' do

	erb :about_us, layout: :index
end