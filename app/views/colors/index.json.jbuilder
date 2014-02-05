json.array!(@colors) do |color|
  json.extract! color, :id, :code, :description, :observation
  json.url color_url(color, format: :json)
end
