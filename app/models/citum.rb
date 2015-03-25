class Citum < ActiveRecord::Base
	belongs_to :Auto , inverse_of: :Citum
	belongs_to :Asesor , inverse_of: :Citum
	has_one :Cliente , :through => :Auto
	has_and_belongs_to_many :Mecanico , join_table: 'cita_mecanicos'
	has_many:Servicio, inverse_of: :Citum
end
