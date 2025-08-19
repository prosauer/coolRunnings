class CreateRunners < ActiveRecord::Migration[8.0]
  def change
    create_table :runners do |t|
      t.integer :rounds, null: false
      t.integer :time_per_round_in_seconds, null: false
      t.references :user, null: false, foreign_key: true
      t.references :event_organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
