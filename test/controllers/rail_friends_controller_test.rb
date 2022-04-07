require "test_helper"

class RailFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rail_friend = rail_friends(:one)
  end

  test "should get index" do
    get rail_friends_url
    assert_response :success
  end

  test "should get new" do
    get new_rail_friend_url
    assert_response :success
  end

  test "should create rail_friend" do
    assert_difference("RailFriend.count") do
      post rail_friends_url, params: { rail_friend: { email: @rail_friend.email, first_name: @rail_friend.first_name, last_name: @rail_friend.last_name, phone: @rail_friend.phone, twitter: @rail_friend.twitter } }
    end

    assert_redirected_to rail_friend_url(RailFriend.last)
  end

  test "should show rail_friend" do
    get rail_friend_url(@rail_friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_rail_friend_url(@rail_friend)
    assert_response :success
  end

  test "should update rail_friend" do
    patch rail_friend_url(@rail_friend), params: { rail_friend: { email: @rail_friend.email, first_name: @rail_friend.first_name, last_name: @rail_friend.last_name, phone: @rail_friend.phone, twitter: @rail_friend.twitter } }
    assert_redirected_to rail_friend_url(@rail_friend)
  end

  test "should destroy rail_friend" do
    assert_difference("RailFriend.count", -1) do
      delete rail_friend_url(@rail_friend)
    end

    assert_redirected_to rail_friends_url
  end
end
