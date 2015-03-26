class Cliente < ActiveRecord::Base
	has_many :NumerosTelefono , inverse_of: :Cliente
	has_many :Auto, inverse_of: :Cliente
	has_many :Citum, :through => :Auto
end
