class AddPointsToJumpResults < ActiveRecord::Migration
  def change
    add_column :jump_results, :points, :integer
  end
end
