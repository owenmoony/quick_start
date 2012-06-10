json.array!(@users) do |json, user|
  json.(user, :id, :login, :email)
end