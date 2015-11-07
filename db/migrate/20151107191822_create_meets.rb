class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :meet_name
      t.string :location_city
      t.string :location_country
      t.date   :start_date
      t.date   :end_date

      t.timestamps
    end
  end
end
