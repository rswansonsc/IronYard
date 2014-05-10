json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name_a, :descripion_a, :links_a
  json.url assignment_url(assignment, format: :json)
end
