class CreateSprintResults < ActiveRecord::Migration
  def change
    create_table :sprint_results do |t|
      t.integer :event_id
      t.integer :athlete_id
      t.boolean :pr
      t.boolean :nr
      t.boolean :wr
      t.boolean :fastest_start
      t.integer :place
      t.decimal :time_seconds
      
      t.timestamps null: false
    end
  end
end
