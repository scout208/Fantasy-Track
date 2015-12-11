class AddReleasedToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :released, :boolean, :default => false
  end
end
