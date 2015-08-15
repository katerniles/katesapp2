FactoryGirl.define do  factory :news, :class => 'New' do
    name "MyString"
email "MyString"
login "MyString"
  end


  factory :product do
    name "Tree"

    factory :product_full_profile do
      description "Oak"
      image_url "/images/oak.jpg"
      colour "green"
    end

  end

  factory :comment do # product has_many comments: each comment belongs_to a product
    body "Test"
    rating "4"
  end
end