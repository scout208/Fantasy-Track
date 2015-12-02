class CreateMidResults < ActiveRecord::Migration
  def change
    create_table :mid_results do |t|
      t.integer :event_id
      t.integer :athlete_id
      t.boolean :pr
      t.boolean :nr
      t.boolean :wr
      t.integer :split_leader
      t.integer :place
      t.decimal :time_seconds
      
      t.timestamps null: false
    end
  end
end
