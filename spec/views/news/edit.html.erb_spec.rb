require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @new = assign(:new, New.create!(
      :name => "MyString",
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders the edit new form" do
    render

    assert_select "form[action=?][method=?]", new_path(@new), "post" do

      assert_select "input#new_name[name=?]", "new[name]"

      assert_select "input#new_email[name=?]", "new[email]"

      assert_select "input#new_login[name=?]", "new[login]"
    end
  end
end
