json.array!(@courses) do |course|
  json.extract! course, :name
  json.url course_url(course, format: :json)
end
