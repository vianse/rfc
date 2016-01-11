json.array!(@listrfcs) do |listrfc|
  json.extract! listrfc, :id, :name, :rfc, :address, :phone, :email, :cp, :uuid_phone
  json.url listrfc_url(listrfc, format: :json)
end
