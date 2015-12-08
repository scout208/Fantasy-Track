class CreateMeetScores < ActiveRecord::Migration
  def change
    create_table :meet_scores do |t|
      t.integer :user_id
      t.integer :league_id
      t.integer :meet_id
      t.integer :points
    end
  end
end
