class AddPointsToEventEntrants < ActiveRecord::Migration
  def change
    add_column :event_entrants, :points, :integer
  end
end
