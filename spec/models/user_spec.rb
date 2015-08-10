require 'rails_helper'

  describe User do

  context "first and last name present" do

    before { @user = User.new(first_name: "Kate", last_name: "Russell") }

    it "should return first and last"
      expect( @user.full_name).to eq "Kate Russell"
    end
  end

  context "first name missing" do

    before { @user = User.new(last_name: "Russell") }

    it "should return last name only" do
      expect( @user.full_name).to eq "Russell"
    end
  end

  context "last name missing" do

    before { @user = User.new(first_name: "Kate") }

    it "should return first name only" do
      expect( @user.full_name).to eq "Kate"
    end
  end

  context "no names present" do

    before { @user = User.new() }

    it  "should return nothing" do
      expect( @user.full_name).to eq ""
    end
  end
