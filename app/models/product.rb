class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
<<<<<<< HEAD
	belongs_to :user
	validates :name, presence: true
#	validates :body, presence: true
#	validates :user, presence: true
#	validates :product, presence: true
#	validates :rating, numericality: { only_integer: true }

	validates :price_in_cents, :numericality => { :greater_than => 0 }
=======

	validates :name, presence: true
	validates :price_in_cents, presence: true
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f

	def average_rating
		comments.average(:rating).to_f
	end
	
	def price_in_cents
		(self.price*100).to_i
	end
<<<<<<< HEAD
	def average_rating
		comments.average(:rating).to_f
	end
=======
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
end

