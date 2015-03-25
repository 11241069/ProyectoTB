class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :NombreCliente
      t.string :ApellidoCliente
      t.string :Email
      t.string :Direccion

      t.timestamps null: false
    end
  end
end
