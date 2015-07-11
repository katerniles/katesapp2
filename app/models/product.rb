class Product < ActiveRecord::Base
	has_many :orders

	validates :name, presence: true
	validates :price_in_cents, presence: true

	def average_rating
		comments.average(:rating).to_f
	end
	
	def price_in_cents
		(self.price*100).to_i
	end
end

