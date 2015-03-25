class CreateNumerosTelefonos < ActiveRecord::Migration
  def change
    create_table :numeros_telefonos do |t|
      t.integer :cliente_id
      t.string :Numero

      t.timestamps null: false
    end

    add_index :numeros_telefonos, :cliente_id
  end
end
