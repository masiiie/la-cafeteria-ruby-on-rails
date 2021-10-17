json.array!(@mercancia) do |mercancium|
  json.extract! mercancium, :id, :product_id, :jornada_id, :recibido
  json.url mercancium_url(mercancium, format: :json)
end
