class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< HEAD
  if Rails.env.production?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :timeout_in =>20.minutes
  else
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  end

  has_many :orders
  has_many :products
  has_many :users

  def to_s
  	first_name
  end
end
=======
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :timeout_in =>20.minutes
	has_many :orders

end
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
