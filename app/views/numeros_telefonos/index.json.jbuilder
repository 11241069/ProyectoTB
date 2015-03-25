json.array!(@numeros_telefonos) do |numeros_telefono|
  json.extract! numeros_telefono, :id, :Numero
  json.url numeros_telefono_url(numeros_telefono, format: :json)
end
