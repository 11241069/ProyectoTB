class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.integer :cliente_id
      t.string :Placa
      t.string :Modelo
      t.string :NumeroMotor

      t.timestamps null: false
    end

    add_index :autos, :cliente_id
  end
end
