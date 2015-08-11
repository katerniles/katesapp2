require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:new, New.new(
      :name => "MyString",
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders new new form" do
    render

    assert_select "form[action=?][method=?]", news_path, "post" do

      assert_select "input#new_name[name=?]", "new[name]"

      assert_select "input#new_email[name=?]", "new[email]"

      assert_select "input#new_login[name=?]", "new[login]"
    end
  end
end
