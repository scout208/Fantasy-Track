class AddPointsToThrowResults < ActiveRecord::Migration
  def change
    add_column :throw_results, :points, :integer
  end
end
