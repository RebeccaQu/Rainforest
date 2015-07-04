class Product < ActiveRecord::Base
	# Validates presence of description & name fields
	# Validates price_in_cents is an integer
	validates :description, :name, presence: true
	validates :price_in_cents, numericality: {only_integer: true}
end
