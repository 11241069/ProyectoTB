class Mecanico < ActiveRecord::Base
	belongs_to :Asesor, inverse_of: :Mecanico
	has_and_belongs_to_many :Citum, join_table: 'cita_mecanicos'
end
