json.array!(@user_apps) do |user_app|
  json.extract! user_app, :id, :uuid_phone
  json.url user_app_url(user_app, format: :json)
end
