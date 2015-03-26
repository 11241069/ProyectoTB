json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :NombreCliente, :ApellidoCliente, :Email, :Direccion
  json.url cliente_url(cliente, format: :json)
end
