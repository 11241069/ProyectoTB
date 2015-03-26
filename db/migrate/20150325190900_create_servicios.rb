class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.integer :citum_id
      t.integer :Tipo
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
