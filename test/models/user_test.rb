require "test_helper"

class UserPasskeyTest < ActiveSupport::TestCase
  test "destroying a user destroys the associated passkeys" do
    user = users(:user_1)

    assert_equal 2, user.passkeys.count

    assert_difference "Passkey.count", -2 do
      user.destroy
    end
  end
end
