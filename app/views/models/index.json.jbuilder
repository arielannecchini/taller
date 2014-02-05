json.array!(@models) do |model|
  json.extract! model, :id, :code, :description, :observation
  json.url model_url(model, format: :json)
end
