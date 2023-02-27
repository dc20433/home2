class AddNameToCharts < ActiveRecord::Migration[7.0]
  def change
    add_column :charts, :name, :string
  end
end
