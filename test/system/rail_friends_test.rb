require "application_system_test_case"

class RailFriendsTest < ApplicationSystemTestCase
  setup do
    @rail_friend = rail_friends(:one)
  end

  test "visiting the index" do
    visit rail_friends_url
    assert_selector "h1", text: "Rail friends"
  end

  test "should create rail friend" do
    visit rail_friends_url
    click_on "New rail friend"

    fill_in "Email", with: @rail_friend.email
    fill_in "First name", with: @rail_friend.first_name
    fill_in "Last name", with: @rail_friend.last_name
    fill_in "Phone", with: @rail_friend.phone
    fill_in "Twitter", with: @rail_friend.twitter
    click_on "Create Rail friend"

    assert_text "Rail friend was successfully created"
    click_on "Back"
  end

  test "should update Rail friend" do
    visit rail_friend_url(@rail_friend)
    click_on "Edit this rail friend", match: :first

    fill_in "Email", with: @rail_friend.email
    fill_in "First name", with: @rail_friend.first_name
    fill_in "Last name", with: @rail_friend.last_name
    fill_in "Phone", with: @rail_friend.phone
    fill_in "Twitter", with: @rail_friend.twitter
    click_on "Update Rail friend"

    assert_text "Rail friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Rail friend" do
    visit rail_friend_url(@rail_friend)
    click_on "Destroy this rail friend", match: :first

    assert_text "Rail friend was successfully destroyed"
  end
end
