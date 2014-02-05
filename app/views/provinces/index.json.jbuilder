json.array!(@provinces) do |province|
  json.extract! province, :id, :country_id, :code, :description
  json.url province_url(province, format: :json)
end
