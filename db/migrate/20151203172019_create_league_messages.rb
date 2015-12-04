class CreateLeagueMessages < ActiveRecord::Migration
  def change
    create_table :league_messages do |t|
      t.text :content
      t.references :league, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :league_messages, [:league_id, :created_at]
  end
end
