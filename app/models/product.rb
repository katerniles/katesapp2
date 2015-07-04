class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	validates :price, presence: true
	validates :name, presence: true
	def average_rating
		comments.average(:rating).to_f
end
def price_times_hundred
	(self.price*100)
end
end

