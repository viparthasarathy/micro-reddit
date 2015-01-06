require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = User.new(name: "Example", email: "example@example.com",
  									 password: "foobar")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "username should be present" do
  	@user.name = "  "
  	assert_not @user.valid?
  end

  test "email should be present" do
  	@user.email = "  "
  	assert_not @user.valid?
  end

  test "password should be present" do
  	@user.password = "  "
  	assert_not @user.valid?
  end

  test "username should not be too long" do
  	@user.name = "a" * 21
  	assert_not @user.valid?
  end

  test "password should not be too long" do
  	@user.password = "a" * 21
  	assert_not @user.valid?
  end

  test "username should be unique" do
  	clone_user = @user.dup
  	clone_user.email = @user.name.upcase
  	@user.save
  	assert_not clone_user.valid?
  end
  
end
