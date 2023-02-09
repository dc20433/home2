require "test_helper"

class OverviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get patient_list" do
    get overviews_patient_list_url
    assert_response :success
  end

  test "should get chart_chart" do
    get overviews_chart_date_url
    assert_response :success
  end
  
  test "should get chart_name" do
    get overviews_chart_name_url
    assert_response :success
  end

  test "should get patient_info" do
    get overviews_patient_info_url
    assert_response :success
  end
end
