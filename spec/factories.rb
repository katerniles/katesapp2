FactoryGirl.define do
  
  factory :user do
    email "kate@blurb.com"
    password "987654321"

    factory :user_full_profile do
      first_name "Kate"
      last_name "Russell"
    end 

  end 

  factory :product do
    name "Tree"

    factory :product_full_profile do
      description "Oak"
      image_url "/images/tree.jpg"
      colour "green"
      price "17.95" 
    end

  end

  factory :comment do # product has_many comments: each comment belongs_to a product
    body "blah blah blah"
    rating "5"
    product
  end

  factory :order do
    user_id "1"
    product_id "1"
    total "100"
  end



end