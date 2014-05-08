json.array!(@submissions) do |submission|
  json.extract! submission, :id, :name_s, :descripion_s, :links_s
  json.url submission_url(submission, format: :json)
end
