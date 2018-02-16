class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :team, null: false
      t.string :password, null: false
      t.integer :permission, null: false

      t.timestamps
    end
  end
end
