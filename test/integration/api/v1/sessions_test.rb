require 'test_helper'

feature "Authentication" do

  describe "#create" do
    it "log_in user with valid email+password" do
      user = User.create!(
        email: "user_1@domain.com",
        password: "password123",
        password_confirmation: "password123"
      )

      post api_v1_user_session_path, {
        email: user.email,
        password: user.password
      }

      assert_equal 200, last_response.status
      #assert_equal false , json_response['auth_token'].blank
      puts json_response['auth_token']
    end
  end
end
