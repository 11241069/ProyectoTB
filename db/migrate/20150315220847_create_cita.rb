class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.integer :auto_id
      t.string :Placa
      t.string :NombreCliente
      t.string :Estado
      t.string :TelefonoContacto
      t.datetime :FechaHoraEntrada
      t.datetime :FechaEstimadaEntrega
      t.integer :asesor_id

      t.timestamps null: false
    end

    add_index :cita, :auto_id
    add_index :cita, :asesor_id
  end
end
