json.array!(@comments) do |comment|
  json.extract! comment, :id, :date_c, :time_c, :links_c, :comment_detail
  json.url comment_url(comment, format: :json)
end
