json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :mercancia_id, :momento
  json.url ventum_url(ventum, format: :json)
end
