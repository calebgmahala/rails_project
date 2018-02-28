class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :place
      t.string :people

      t.timestamps
    end
  end
end
