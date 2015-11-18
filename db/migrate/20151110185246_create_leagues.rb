class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.integer :creator_id
      t.string :league_name
      t.string :pass_code
    end
  end
end
