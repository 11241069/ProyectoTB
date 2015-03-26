json.array!(@cita) do |citum|
  json.extract! citum, :id, :auto_id, :Placa, :NombreCliente, :Estado, :TelefonoContacto, :FechaHoraEntrada, :asesor_id
  json.url citum_url(citum, format: :json)
end
