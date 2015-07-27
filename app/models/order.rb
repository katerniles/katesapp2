class Order < ActiveRecord::Base
	belongs_to :product
	belongs_to :users
end

class User < ActiveRecord::Base
	has_many :orders
end