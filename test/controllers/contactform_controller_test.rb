require 'test_helper'

class ContactformControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactform_index_url
    assert_response :success
  end

end
