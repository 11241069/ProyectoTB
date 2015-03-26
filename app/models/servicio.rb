class Servicio < ActiveRecord::Base
	belongs_to :Citum, inverse_of: :Servicio
end
