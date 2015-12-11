class AddScoredToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :scored, :boolean
  end
end
