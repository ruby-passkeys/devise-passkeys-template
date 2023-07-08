require "test_helper"

class RootControllerTest < ActionDispatch::IntegrationTest
  test "redirects to the sign_in" do
    get root_url
    assert_redirected_to new_user_session_url
  end
end
