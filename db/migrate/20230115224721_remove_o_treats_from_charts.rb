class RemoveOTreatsFromCharts < ActiveRecord::Migration[7.0]
  def change
    remove_column :charts, :o_treats
  end
end
