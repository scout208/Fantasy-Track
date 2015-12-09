class AddAthleteIdToAthleteSelections < ActiveRecord::Migration
  def change
    add_column :athlete_selections, :athlete_id, :integer
  end
end
