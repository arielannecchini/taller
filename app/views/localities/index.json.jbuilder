json.array!(@localities) do |locality|
  json.extract! locality, :id, :province_id, :code, :description, :observation
  json.url locality_url(locality, format: :json)
end
