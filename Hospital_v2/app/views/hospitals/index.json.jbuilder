json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :description
  json.url hospital_url(hospital, format: :json)
end
