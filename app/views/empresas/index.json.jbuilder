json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :name, :razon, :user_id, :comercio_id
  json.url empresa_url(empresa, format: :json)
end
