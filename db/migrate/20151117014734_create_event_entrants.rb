class CreateEventEntrants < ActiveRecord::Migration
  def change
    create_table :event_entrants do |t|
      t.integer :event_id
      t.integer :athlete_id

      t.timestamps null: false
    end
  end
end
