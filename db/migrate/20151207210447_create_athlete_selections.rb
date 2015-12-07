class CreateAthleteSelections < ActiveRecord::Migration
  def change
    create_table :athlete_selections do |t|
      t.integer :user_id
      t.integer :league_id
      t.integer :event_entrant_id
      t.integer :meet_id
      t.integer :points
    end
  end
end
