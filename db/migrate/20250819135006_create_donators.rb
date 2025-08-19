class CreateDonators < ActiveRecord::Migration[8.0]
  def change
    create_table :donators do |t|
      t.integer :donation_in_cents, null: false
      t.text :message
      t.references :runner, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
