class RemoveEventEntrantIdFromAthleteSelections < ActiveRecord::Migration
  def change
    remove_column :athlete_selections, :event_entrant_id, :integer
  end
end
