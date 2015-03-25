class CreateAsesors < ActiveRecord::Migration
  def change
    create_table :asesors do |t|
      t.string :NombreAsesor
      t.string :ApellidoAsesor
      t.string :NumeroTelefono

      t.timestamps null: false
    end
  end
end
