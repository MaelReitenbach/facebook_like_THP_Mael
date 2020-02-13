require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gossip_new_url
    assert_response :success
  end

end
