require 'faker'
enforce_available_locales = false 
 
#Let's see if we can make a fake person...
happy_client = []
10.times do
	happy_client.push(
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

# erb file rendering
<% @bros.each do |bro| %>
  <%= bro[:first_name] %>
  <%= bro[:last_name] %>
  is a total bro!
  <br>
<% end %>
happy_client.each do |client|
	puts client
end

# Wowee-wow-wow. Now let's print him off some business cards
puts "#{person_name}
#{person_company}
'#{person_company_slogan.capitalize}'
#{person_address}
#{person_city}, #{person_state} #{person_zip}
Call me at : #{person_phone}
Email me at: #{person_email}
It's a pleasure doing business."


100.times do 
  # make a person
  # save person
end

happy_client = [{person_name:             Faker::Name.name,
	person_email:            Faker::Internet.email}]