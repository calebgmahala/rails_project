class TeamChange < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :team
  	add_reference :users, :team, index: true
  end
end
