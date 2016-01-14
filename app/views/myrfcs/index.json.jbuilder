json.array!(@myrfcs) do |myrfc|
  json.extract! myrfc, :id, :name, :rfc, :address, :phone, :email, :cp, :comercio_id, :referencia
  json.url myrfc_url(myrfc, format: :json)
end
