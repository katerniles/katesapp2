class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true
<<<<<<< HEAD
  validates :rating, presence: true, numericality: { only_integer: true }
=======
  validates :rating, numericality: {only_integer:true }
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
end