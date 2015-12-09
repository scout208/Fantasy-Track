class AddEventIdToAthleteSelections < ActiveRecord::Migration
  def change
    add_column :athlete_selections, :event_id, :integer
  end
end
