class Asesor < ActiveRecord::Base
	has_many :Mecanico , inverse_of: :Asesor
	has_many :Citum , inverse_of: :Asesor
end
