class CreateEventOrganisations < ActiveRecord::Migration[8.0]
  def change
    create_table :event_organisations do |t|
      t.references :event, null: false, foreign_key: true
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
      t.index [:event_id, :organisation_id], unique: true
    end
  end
end
