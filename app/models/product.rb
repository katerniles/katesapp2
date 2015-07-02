class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	validates :price, presence: true
	validates :name, presence: true
	def average_rating
		comments.average(:rating).to_f
end
def price
	(self.price*100).to_i
end
end

