json.array!(@cars) do |car|
  json.extract! car, :id, :patent, :frame, :model_id, :trademark_id, :color_id, :year, :observation, :customer_id
  json.url car_url(car, format: :json)
end
