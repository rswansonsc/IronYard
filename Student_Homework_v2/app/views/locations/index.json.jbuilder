json.array!(@locations) do |location|
  json.extract! location, :id, :name_l, :description_l, :address, :city, :zip
  json.url location_url(location, format: :json)
end
