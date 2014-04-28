json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :description, :workflow_state
  json.url medication_url(medication, format: :json)
end
