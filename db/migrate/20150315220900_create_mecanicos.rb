class CreateMecanicos < ActiveRecord::Migration
  def change
    create_table :mecanicos do |t|
      t.integer :asesor_id
      t.string :NombreMecanico
      t.string :ApellidoMecanico
      t.string :NumeroTelefono

      t.timestamps null: false
    end
  end
end
