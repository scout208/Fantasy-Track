class CreateLeaguemembers < ActiveRecord::Migration
  def change
    create_table :leaguemembers do |t|
      t.integer :league_id
      t.integer :user_id
    end
  end
end
