json.array!(@dependientes) do |dependiente|
  json.extract! dependiente, :id, :nombre, :direccion, :telefono
  json.url dependiente_url(dependiente, format: :json)
end
