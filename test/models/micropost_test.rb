require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:Danger)
    # This code is not idiomatically correct.
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 170 characters" do
    @micropost.content = "a" * 171
    assert_not @micropost.valid?
  end 

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end

  # test "the truth" do
  #   assert true
  # end
end
