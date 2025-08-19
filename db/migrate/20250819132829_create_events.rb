class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.datetime :date
      t.integer :round_distance_in_meters, null:false

      t.timestamps
    end
  end
end
