json.array!(@trademarks) do |trademark|
  json.extract! trademark, :id, :code, :description, :observation
  json.url trademark_url(trademark, format: :json)
end
