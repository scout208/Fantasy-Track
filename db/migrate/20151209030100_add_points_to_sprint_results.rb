class AddPointsToSprintResults < ActiveRecord::Migration
  def change
    add_column :sprint_results, :points, :integer
  end
end
