class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.date   :birth_date
      t.string :country
      t.string :notes
    end
  end
end
