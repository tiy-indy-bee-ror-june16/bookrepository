class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.text :bio
      t.string :stripe_token

      t.timestamps
    end
  end
end
