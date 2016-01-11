json.array!(@profile_lists) do |profile_list|
  json.extract! profile_list, :id, :full_name, :phone, :email, :birthday, :address, :city, :state, :country, :cp
  json.url profile_list_url(profile_list, format: :json)
end
