json.array!(@countries) do |country|
  json.extract! country, :id, :code, :description, :observation
  json.url country_url(country, format: :json)
end
