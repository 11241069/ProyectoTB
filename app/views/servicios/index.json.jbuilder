json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :citum_id, :tipo, :descripcion
  json.url servicio_url(servicio, format: :json)
end
