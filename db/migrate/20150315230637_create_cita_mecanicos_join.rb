class CreateCitaMecanicosJoin < ActiveRecord::Migration
  def change
    create_table 'cita_mecanicos', :id => false do |t|
    	t.column 'citum_id', :integer
    	t.column 'mecanico_id', :integer
    end

    add_index :cita_mecanicos, :citum_id
    add_index :cita_mecanicos, :mecanico_id
  end
end
