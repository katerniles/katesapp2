require 'rails_helper'


RSpec.describe User, type: :model do
    before do 
      @user = User.create(first_name: "Kate", last_name: "Russell")
    end

    subject { @user }

    it "should return first and last" do
        expect(@user.first_name).to eq "Kate"
        expect(@user.last_name).to eq "Russell"
      end
end