json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :description, :workflow_state
  json.url patient_url(patient, format: :json)
end
