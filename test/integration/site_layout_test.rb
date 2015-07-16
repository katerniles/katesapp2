require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
  	get root_path
  	
  	assert_select "a[href=?]", login_path
  	
  end
  #   assert true
  # end
end
