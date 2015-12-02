class CreateThrowResults < ActiveRecord::Migration
  def change
    create_table :throw_results do |t|
      t.integer :event_id
      t.integer :athlete_id
      t.boolean :pr
      t.boolean :nr
      t.boolean :wr
      t.integer :best_of_round
      t.integer :place
      t.decimal :best_throw
      t.decimal :throw_1
      t.decimal :throw_2
      t.decimal :throw_3
      t.decimal :throw_4
      t.decimal :throw_5
      t.decimal :throw_6
      
      t.timestamps null: false
    end
  end
end
