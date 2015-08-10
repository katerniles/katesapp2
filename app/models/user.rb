class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
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

  def full_name
    first_name + last_name
  end
end
