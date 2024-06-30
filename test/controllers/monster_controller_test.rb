require "test_helper"

class MonsterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monster_index_url
    assert_response :success
  end

  test "should get show" do
    get monster_show_url
    assert_response :success
  end
end
