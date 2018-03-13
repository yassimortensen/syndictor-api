class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
