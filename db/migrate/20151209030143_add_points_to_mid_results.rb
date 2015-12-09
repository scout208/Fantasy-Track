class AddPointsToMidResults < ActiveRecord::Migration
  def change
    add_column :mid_results, :points, :integer
  end
end
