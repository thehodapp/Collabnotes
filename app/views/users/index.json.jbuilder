json.array!(@users) do |user|
  json.extract! user, :name, :password, :username, :email
  json.url user_url(user, format: :json)
end
