json.array!(@products) do |product|
  json.extract! product, :id, :nombre, :descripcion, :foto, :precio, :medicion
  json.url product_url(product, format: :json)
end
