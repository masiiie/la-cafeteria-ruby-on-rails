json.array!(@jornadas) do |jornada|
  json.extract! jornada, :id, :fecha, :fondo_inicial, :fondo_final, :dependiente_id
  json.url jornada_url(jornada, format: :json)
end
