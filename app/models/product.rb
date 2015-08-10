class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	belongs_to :user
	validates :name, presence: true
#	validates :body, presence: true
#	validates :user, presence: true
#	validates :product, presence: true
#	validates :rating, numericality: { only_integer: true }

	validates :price_in_cents, :numericality => { :greater_than => 0 }

	def average_rating
		comments.average(:rating).to_f
	end
	
	def price_in_cents
		(self.price*100).to_i
	end
end

