class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :meet
      t.integer :event_type
      
      t.timestamps
    end
  end
end
