json.array!(@courses) do |course|
  json.extract! course, :id, :name_course, :description_coruse, :links_course
  json.url course_url(course, format: :json)
end
