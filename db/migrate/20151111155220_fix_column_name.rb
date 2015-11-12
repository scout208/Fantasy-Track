class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :meet, :meet_id
  end
end
