class AddReleasedToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :released, :boolean
  end
end
