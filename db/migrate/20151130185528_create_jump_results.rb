class CreateJumpResults < ActiveRecord::Migration
  def change
    create_table :jump_results do |t|
      t.integer :event_id
      t.integer :athlete_id
      t.boolean :pr
      t.boolean :nr
      t.boolean :wr
      t.integer :best_of_round
      t.integer :place
      t.decimal :best_jump
      t.decimal :jump_1
      t.decimal :jump_2
      t.decimal :jump_3
      t.decimal :jump_4
      t.decimal :jump_5
      t.decimal :jump_6
      
      t.timestamps null: false
    end
  end
end
