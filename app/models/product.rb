class Product < ActiveRecord::Base

	has_many :reviews 
	has_many :users, through: :reviews

	# Validates presence of description & name fields
	# Validates price_in_cents is an integer
	validates :description, :name, presence: true
	validates :price_in_cents, numericality: {only_integer: true}

	# Displaying price_in_cents to dollars
	# sprintf is a method that rounds numbers to two decimals
	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		sprintf("%.2f", price_in_dollars)
	end
end
