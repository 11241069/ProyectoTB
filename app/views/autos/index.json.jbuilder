json.array!(@autos) do |auto|
  json.extract! auto, :id, :Modelo, :NumeroMotor
  json.url auto_url(auto, format: :json)
end
