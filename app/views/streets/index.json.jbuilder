json.array!(@streets) do |street|
  json.extract! street, :id, :createStreet_type_id, :street, :number, :floor, :department, :locality_id, :province_id, :country_id
  json.url street_url(street, format: :json)
end
