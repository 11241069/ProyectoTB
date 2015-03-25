json.array!(@asesors) do |asesor|
  json.extract! asesor, :id, :NombreAsesor, :ApellidoAsesor, :NumeroTelefono
  json.url asesor_url(asesor, format: :json)
end
