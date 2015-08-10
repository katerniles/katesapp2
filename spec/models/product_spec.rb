require 'rails_helper'
require 'spec_helper'

describe Product, type: :model do 

  context "name description, image URL, color, and price"

    before { @product = FactoryGirl.build(:product)}
  
      it "should return name" do
        expect(@product.name).to eq "Tree"
      end

#      it "should return description" do
#        expect(@product.description).to eq "Oak"
#      end

#      it "should return image URL" do
#        expect(@product.image_url).to eq "/images/oak.jpg"
#      end

#      it "should return color" do
#        expect(@product.colour).to eq "green"
#      end

    end