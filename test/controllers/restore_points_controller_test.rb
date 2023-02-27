require "test_helper"

class RestorePointsControllerTest < ActionDispatch::IntegrationTest
  test "should get patient_list_update" do
    get restore_points_patient_list_update_url
    assert_response :success
  end

  test "should get patient_chart_update" do
    get restore_points_patient_chart_update_url
    assert_response :success
  end

  test "should get patient_info_update" do
    get restore_points_patient_info_update_url
    assert_response :success
  end
end
