class Auto < ActiveRecord::Base
	belongs_to :Cliente ,inverse_of: :Auto 
	has_many :Citum ,inverse_of: :Auto
	validates :Placa, presence: true, uniqueness: true
end
