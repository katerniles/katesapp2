class Order < ActiveRecord::Base
	belongs_to :product
	belong_to: users
end