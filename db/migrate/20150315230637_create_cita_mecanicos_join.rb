class CreateCitaMecanicosJoin < ActiveRecord::Migration
  def change
    create_table 'cita_mecanicos', :id => false do |t|
    	t.column 'Citum_id', :integer
    	t.column 'Mecanico_id', :integer
    end

    add_index :cita_mecanicos, :Citum_id
    add_index :cita_mecanicos, :Mecanico_id
    add_foreign_key :cita_mecanicos, :Citum
    add_foreign_key :cita_mecanicos, :Mecanico
    
  end
end
