class RestorePointsController < ApplicationController
  def patient_list_update
    @patient_list_update = Regi.order("updated_at DESC, last_name, first_name")
  end

  def patient_chart_update
    @chart_date_upate = Chart.all
  end

  def patient_info_update
    @patient_info_update = Patient.all
  end
end
