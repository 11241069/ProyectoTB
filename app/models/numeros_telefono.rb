class NumerosTelefono < ActiveRecord::Base
	belongs_to :Cliente , inverse_of: :NumerosTelefono
end
