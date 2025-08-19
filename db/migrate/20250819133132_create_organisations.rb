class CreateOrganisations < ActiveRecord::Migration[8.0]
  def change
    create_table :organisations do |t|
      t.string :name, null:false
      t.string :homepage

      t.timestamps
    end
  end
end
