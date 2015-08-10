require 'rails_helper'

RSpec.describe Product, type: :model do 
  before do
    @product = Product.create(name: "Tree")
    end

    subject { @product }

    it "should return name" do
        expect(@product.name).to eq "Tree"
      end
end
