json.array!(@users) do |user|
  json.extract! user, :id, :var1, :var2, :var3, :var4, :var5
  json.url user_url(user, format: :json)
end
