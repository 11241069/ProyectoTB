class Citum < ActiveRecord::Base
	belongs_to :Auto , inverse_of: :Citum
	belongs_to :Asesor , inverse_of: :Citum
	has_one :Cliente , :through => :Auto
	has_and_belongs_to_many :Mecanico
end
