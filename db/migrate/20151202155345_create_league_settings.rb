class CreateLeagueSettings < ActiveRecord::Migration
  def change
    create_table :league_settings do |t|
      t.integer :league_id
      t.boolean :standard_scoring
      t.boolean :pr_bonus
      t.boolean :nr_bonus
      t.boolean :wr_bonus
      t.boolean :best_of_round_bonus
      t.boolean :fastest_start_bonus
      t.boolean :split_leader_bonus
      t.boolean :exact_place_bonus
      t.integer :athlete_select_option
    end
  end
end
