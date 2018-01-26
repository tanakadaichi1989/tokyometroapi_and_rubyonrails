require 'test_helper'

class TimetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get timetables_top_url
    assert_response :success
  end

end
